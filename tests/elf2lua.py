import sys
from io import BytesIO
from elftools.elf.elffile import ELFFile
from jinja2 import Environment, FileSystemLoader

def load_elf_to_memory(elf_data, stack_size=0x1000, stack_start=0x7ff00000):
    from collections import defaultdict
    memory_map = defaultdict(int)
    entrypoint = 0
    heap_start = None

    # Wrap the bytes data with a BytesIO stream to make it seekable
    elf_stream = BytesIO(elf_data)
    elf = ELFFile(elf_stream)

    # Get the entry point of the ELF file
    entrypoint = elf.header.e_entry

    # Iterate over the sections
    sections = [section for section in elf.iter_sections() if section['sh_flags'] & 0x2]
    for section in sections:
        section_addr = section['sh_addr']
        section_data = section.data()
        for i in range(0, len(section_data), 4):
            address = section_addr + i
            word = int.from_bytes(section_data[i:i+4], byteorder='little')
            memory_map[address] = word

        # Determine the heap start as the end of the highest section
        if heap_start is None or section_addr + section_size > heap_start:
            heap_start = section_addr + section_size

    # Initialize the stack region with zeros
    #for i in range(0, stack_size, 4):
    #    address = stack_start - i
    #    memory_map[address] = 0x0

    # Set the initial stack pointer (to the top of the stack)
    initial_stack_pointer = stack_start

    # Initialize the heap region, typically starting just after the .bss section
    heap_start = (heap_start + 0xFFF) & ~0xFFF  # Align heap start to the next page boundary
    memory_map[heap_start] = 0x0  # Set the initial heap pointer (brk)

    # Placeholder for global pointer, often needed in RISC-V
    gp_pointer = 0x0  # Set this to the appropriate value based on the ELF structure if needed

    return entrypoint, initial_stack_pointer, heap_start, gp_pointer, memory_map

def generate_lua_script(name, entrypoint, stack_pointer, heap_start, gp_pointer, memory_map):
    # Set up the Jinja2 environment and load the template
    env = Environment(loader=FileSystemLoader('.'))
    env.filters['hex'] = hex
    template = env.get_template('init.lua.j2')

    chunks = []
    chunk_len = 50000  # Increase chunk size to reduce the number of chunks

    sorted_keys = sorted(memory_map.keys())
    for i in range(0, len(sorted_keys), chunk_len):
        chunks.append({key: memory_map[key] for key in sorted_keys[i:i+chunk_len]})

    # Render the template with the provided data
    lua_script = template.render(
        name=name,
        entrypoint=entrypoint,
        stack_pointer=stack_pointer,
        heap_start=heap_start,
        gp_pointer=gp_pointer,
        chunks=chunks,
        chunks_len=len(chunks)
    )

    return lua_script

# Read ELF file from stdin
if __name__ == "__main__":
    name = sys.argv[1]

    # Read the entire input from stdin
    elf_data = sys.stdin.buffer.read()
    
    # Process the ELF data
    entrypoint, stack_pointer, heap_start, gp_pointer, memory_map = load_elf_to_memory(elf_data)
    
    # Generate and output the Lua script
    lua_script = generate_lua_script(name, entrypoint, stack_pointer, heap_start, gp_pointer, memory_map)
    sys.stdout.write(lua_script)
