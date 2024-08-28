RV32_KEYMAP = {
    W = 0,
    A = 1,
    S = 2,
    D = 3,
    R = 4,
    F = 5,
    LCTRL = 6,
    LSHIFT = 7,
    SPACE = 8,
    LALT = 9,
    ENTER = 10,
    ESCAPE = 11,
    UP = 12,
    LEFT = 13,
    DOWN = 14,
    RIGHT = 15,
    Y = 16,
    N = 17
}

-- Initializes and returns a frame object for rendering and handling input.
-- @param CPU The CPU object associated with the frame.
-- @return A frame object with rendering and input handling capabilities.
function RVEMU_GetFrame(CPU)
    local Frame = {}
    Frame.CPU = CPU

    Frame.vga_to_rgb = {}

    --[[
    for i = 0, 255 do
        local r, g, b

        if i < 16 then
            local colors = {
                {0x00, 0x00, 0x00}, {0x00, 0x00, 0xAA}, {0x00, 0xAA, 0x00}, {0x00, 0xAA, 0xAA},
                {0xAA, 0x00, 0x00}, {0xAA, 0x00, 0xAA}, {0xAA, 0x55, 0x00}, {0xAA, 0xAA, 0xAA},
                {0x55, 0x55, 0x55}, {0x55, 0x55, 0xFF}, {0x55, 0xFF, 0x55}, {0x55, 0xFF, 0xFF},
                {0xFF, 0x55, 0x55}, {0xFF, 0x55, 0xFF}, {0xFF, 0xFF, 0x55}, {0xFF, 0xFF, 0xFF}
            }
            r, g, b = unpack(colors[i + 1])
        elseif i < 232 then
            local base = i - 16
            r = math.floor(base / 36) * 51
            g = (math.floor(base / 6) % 6) * 51
            b = (base % 6) * 51
        else 
            local gray = (i - 232) * 10 + 8
            r, g, b = gray, gray, gray
        end

        vga_to_rgb[i] = {r/255, g/255, b/255}
    end
    ]]

    local colors = {
        {0x0, 0x0, 0x0},
        {0x1f, 0x17, 0xb},
        {0x17, 0xf, 0x7},
        {0x4b, 0x4b, 0x4b},
        {0xff, 0xff, 0xff},
        {0x1b, 0x1b, 0x1b},
        {0x13, 0x13, 0x13},
        {0xb, 0xb, 0xb},
        {0x7, 0x7, 0x7},
        {0x2f, 0x37, 0x1f},
        {0x23, 0x2b, 0xf},
        {0x17, 0x1f, 0x7},
        {0xf, 0x17, 0x0},
        {0x4f, 0x3b, 0x2b},
        {0x47, 0x33, 0x23},
        {0x3f, 0x2b, 0x1b},
        {0xff, 0xb7, 0xb7},
        {0xf7, 0xab, 0xab},
        {0xf3, 0xa3, 0xa3},
        {0xeb, 0x97, 0x97},
        {0xe7, 0x8f, 0x8f},
        {0xdf, 0x87, 0x87},
        {0xdb, 0x7b, 0x7b},
        {0xd3, 0x73, 0x73},
        {0xcb, 0x6b, 0x6b},
        {0xc7, 0x63, 0x63},
        {0xbf, 0x5b, 0x5b},
        {0xbb, 0x57, 0x57},
        {0xb3, 0x4f, 0x4f},
        {0xaf, 0x47, 0x47},
        {0xa7, 0x3f, 0x3f},
        {0xa3, 0x3b, 0x3b},
        {0x9b, 0x33, 0x33},
        {0x97, 0x2f, 0x2f},
        {0x8f, 0x2b, 0x2b},
        {0x8b, 0x23, 0x23},
        {0x83, 0x1f, 0x1f},
        {0x7f, 0x1b, 0x1b},
        {0x77, 0x17, 0x17},
        {0x73, 0x13, 0x13},
        {0x6b, 0xf, 0xf},
        {0x67, 0xb, 0xb},
        {0x5f, 0x7, 0x7},
        {0x5b, 0x7, 0x7},
        {0x53, 0x7, 0x7},
        {0x4f, 0x0, 0x0},
        {0x47, 0x0, 0x0},
        {0x43, 0x0, 0x0},
        {0xff, 0xeb, 0xdf},
        {0xff, 0xe3, 0xd3},
        {0xff, 0xdb, 0xc7},
        {0xff, 0xd3, 0xbb},
        {0xff, 0xcf, 0xb3},
        {0xff, 0xc7, 0xa7},
        {0xff, 0xbf, 0x9b},
        {0xff, 0xbb, 0x93},
        {0xff, 0xb3, 0x83},
        {0xf7, 0xab, 0x7b},
        {0xef, 0xa3, 0x73},
        {0xe7, 0x9b, 0x6b},
        {0xdf, 0x93, 0x63},
        {0xd7, 0x8b, 0x5b},
        {0xcf, 0x83, 0x53},
        {0xcb, 0x7f, 0x4f},
        {0xbf, 0x7b, 0x4b},
        {0xb3, 0x73, 0x47},
        {0xab, 0x6f, 0x43},
        {0xa3, 0x6b, 0x3f},
        {0x9b, 0x63, 0x3b},
        {0x8f, 0x5f, 0x37},
        {0x87, 0x57, 0x33},
        {0x7f, 0x53, 0x2f},
        {0x77, 0x4f, 0x2b},
        {0x6b, 0x47, 0x27},
        {0x5f, 0x43, 0x23},
        {0x53, 0x3f, 0x1f},
        {0x4b, 0x37, 0x1b},
        {0x3f, 0x2f, 0x17},
        {0x33, 0x2b, 0x13},
        {0x2b, 0x23, 0xf},
        {0xef, 0xef, 0xef},
        {0xe7, 0xe7, 0xe7},
        {0xdf, 0xdf, 0xdf},
        {0xdb, 0xdb, 0xdb},
        {0xd3, 0xd3, 0xd3},
        {0xcb, 0xcb, 0xcb},
        {0xc7, 0xc7, 0xc7},
        {0xbf, 0xbf, 0xbf},
        {0xb7, 0xb7, 0xb7},
        {0xb3, 0xb3, 0xb3},
        {0xab, 0xab, 0xab},
        {0xa7, 0xa7, 0xa7},
        {0x9f, 0x9f, 0x9f},
        {0x97, 0x97, 0x97},
        {0x93, 0x93, 0x93},
        {0x8b, 0x8b, 0x8b},
        {0x83, 0x83, 0x83},
        {0x7f, 0x7f, 0x7f},
        {0x77, 0x77, 0x77},
        {0x6f, 0x6f, 0x6f},
        {0x6b, 0x6b, 0x6b},
        {0x63, 0x63, 0x63},
        {0x5b, 0x5b, 0x5b},
        {0x57, 0x57, 0x57},
        {0x4f, 0x4f, 0x4f},
        {0x47, 0x47, 0x47},
        {0x43, 0x43, 0x43},
        {0x3b, 0x3b, 0x3b},
        {0x37, 0x37, 0x37},
        {0x2f, 0x2f, 0x2f},
        {0x27, 0x27, 0x27},
        {0x23, 0x23, 0x23},
        {0x77, 0xff, 0x6f},
        {0x6f, 0xef, 0x67},
        {0x67, 0xdf, 0x5f},
        {0x5f, 0xcf, 0x57},
        {0x5b, 0xbf, 0x4f},
        {0x53, 0xaf, 0x47},
        {0x4b, 0x9f, 0x3f},
        {0x43, 0x93, 0x37},
        {0x3f, 0x83, 0x2f},
        {0x37, 0x73, 0x2b},
        {0x2f, 0x63, 0x23},
        {0x27, 0x53, 0x1b},
        {0x1f, 0x43, 0x17},
        {0x17, 0x33, 0xf},
        {0x13, 0x23, 0xb},
        {0xb, 0x17, 0x7},
        {0xbf, 0xa7, 0x8f},
        {0xb7, 0x9f, 0x87},
        {0xaf, 0x97, 0x7f},
        {0xa7, 0x8f, 0x77},
        {0x9f, 0x87, 0x6f},
        {0x9b, 0x7f, 0x6b},
        {0x93, 0x7b, 0x63},
        {0x8b, 0x73, 0x5b},
        {0x83, 0x6b, 0x57},
        {0x7b, 0x63, 0x4f},
        {0x77, 0x5f, 0x4b},
        {0x6f, 0x57, 0x43},
        {0x67, 0x53, 0x3f},
        {0x5f, 0x4b, 0x37},
        {0x57, 0x43, 0x33},
        {0x53, 0x3f, 0x2f},
        {0x9f, 0x83, 0x63},
        {0x8f, 0x77, 0x53},
        {0x83, 0x6b, 0x4b},
        {0x77, 0x5f, 0x3f},
        {0x67, 0x53, 0x33},
        {0x5b, 0x47, 0x2b},
        {0x4f, 0x3b, 0x23},
        {0x43, 0x33, 0x1b},
        {0x7b, 0x7f, 0x63},
        {0x6f, 0x73, 0x57},
        {0x67, 0x6b, 0x4f},
        {0x5b, 0x63, 0x47},
        {0x53, 0x57, 0x3b},
        {0x47, 0x4f, 0x33},
        {0x3f, 0x47, 0x2b},
        {0x37, 0x3f, 0x27},
        {0xff, 0xff, 0x73},
        {0xeb, 0xdb, 0x57},
        {0xd7, 0xbb, 0x43},
        {0xc3, 0x9b, 0x2f},
        {0xaf, 0x7b, 0x1f},
        {0x9b, 0x5b, 0x13},
        {0x87, 0x43, 0x7},
        {0x73, 0x2b, 0x0},
        {0xff, 0xff, 0xff},
        {0xff, 0xdb, 0xdb},
        {0xff, 0xbb, 0xbb},
        {0xff, 0x9b, 0x9b},
        {0xff, 0x7b, 0x7b},
        {0xff, 0x5f, 0x5f},
        {0xff, 0x3f, 0x3f},
        {0xff, 0x1f, 0x1f},
        {0xff, 0x0, 0x0},
        {0xef, 0x0, 0x0},
        {0xe3, 0x0, 0x0},
        {0xd7, 0x0, 0x0},
        {0xcb, 0x0, 0x0},
        {0xbf, 0x0, 0x0},
        {0xb3, 0x0, 0x0},
        {0xa7, 0x0, 0x0},
        {0x9b, 0x0, 0x0},
        {0x8b, 0x0, 0x0},
        {0x7f, 0x0, 0x0},
        {0x73, 0x0, 0x0},
        {0x67, 0x0, 0x0},
        {0x5b, 0x0, 0x0},
        {0x4f, 0x0, 0x0},
        {0x43, 0x0, 0x0},
        {0xe7, 0xe7, 0xff},
        {0xc7, 0xc7, 0xff},
        {0xab, 0xab, 0xff},
        {0x8f, 0x8f, 0xff},
        {0x73, 0x73, 0xff},
        {0x53, 0x53, 0xff},
        {0x37, 0x37, 0xff},
        {0x1b, 0x1b, 0xff},
        {0x0, 0x0, 0xff},
        {0x0, 0x0, 0xe3},
        {0x0, 0x0, 0xcb},
        {0x0, 0x0, 0xb3},
        {0x0, 0x0, 0x9b},
        {0x0, 0x0, 0x83},
        {0x0, 0x0, 0x6b},
        {0x0, 0x0, 0x53},
        {0xff, 0xff, 0xff},
        {0xff, 0xeb, 0xdb},
        {0xff, 0xd7, 0xbb},
        {0xff, 0xc7, 0x9b},
        {0xff, 0xb3, 0x7b},
        {0xff, 0xa3, 0x5b},
        {0xff, 0x8f, 0x3b},
        {0xff, 0x7f, 0x1b},
        {0xf3, 0x73, 0x17},
        {0xeb, 0x6f, 0xf},
        {0xdf, 0x67, 0xf},
        {0xd7, 0x5f, 0xb},
        {0xcb, 0x57, 0x7},
        {0xc3, 0x4f, 0x0},
        {0xb7, 0x47, 0x0},
        {0xaf, 0x43, 0x0},
        {0xff, 0xff, 0xff},
        {0xff, 0xff, 0xd7},
        {0xff, 0xff, 0xb3},
        {0xff, 0xff, 0x8f},
        {0xff, 0xff, 0x6b},
        {0xff, 0xff, 0x47},
        {0xff, 0xff, 0x23},
        {0xff, 0xff, 0x0},
        {0xa7, 0x3f, 0x0},
        {0x9f, 0x37, 0x0},
        {0x93, 0x2f, 0x0},
        {0x87, 0x23, 0x0},
        {0x4f, 0x3b, 0x27},
        {0x43, 0x2f, 0x1b},
        {0x37, 0x23, 0x13},
        {0x2f, 0x1b, 0xb},
        {0x0, 0x0, 0x53},
        {0x0, 0x0, 0x47},
        {0x0, 0x0, 0x3b},
        {0x0, 0x0, 0x2f},
        {0x0, 0x0, 0x23},
        {0x0, 0x0, 0x17},
        {0x0, 0x0, 0xb},
        {0x0, 0x0, 0x0},
        {0xff, 0x9f, 0x43},
        {0xff, 0xe7, 0x4b},
        {0xff, 0x7b, 0xff},
        {0xff, 0x0, 0xff},
        {0xcf, 0x0, 0xcf},
        {0x9f, 0x0, 0x9b},
        {0x6f, 0x0, 0x6b},
        {0xa7, 0x6b, 0x6b}
    }

    for i = 0, 255 do
        Frame.vga_to_rgb[i] = { colors[i+1][1]/255, colors[i+1][2]/255, colors[i+1][3]/255 }
    end

    Frame.pixels = {}

    local FrameBufferTestMixin = {}

    function FrameBufferTestMixin:OnLoad()
        self.ScreenWidth = 320
        self.ScreenHeight = 50
    
        self:SetToplevel(true)
        -- self:SetIsFrameBuffer(true)
        self:SetAlpha(1)
        self:SetSize(self.ScreenWidth * 2, self.ScreenHeight * 2)
    
        self.FrameBuffer = {}

        for i = 0, self.ScreenHeight-1 do
            for j = 0, self.ScreenWidth-1 do
                local pixel = self:CreateTexture()
                pixel:SetColorTexture(0, 0, 0)
                pixel:SetSize(2, 2)
                pixel:SetDrawLayer("ARTWORK", 1)
                pixel.color = 0
                self.FrameBuffer[#self.FrameBuffer + 1] = pixel
                Frame.pixels[#Frame.pixels + 1] = pixel
            end
        end

        local initialAnchor = AnchorUtil.CreateAnchor("TOPLEFT", self, "TOPLEFT", 0, 0)
        local layout = AnchorUtil.CreateGridLayout(GridLayoutMixin.Direction.TopLeftToBottomRight, self.ScreenWidth, 0, 0)
        AnchorUtil.GridLayout(self.FrameBuffer, initialAnchor, layout)
    end

    Frame.FrameBufferTestFrameParted = {}

    -- Without splitting it into parts WoW crashes.
    for i = 4, 1, -1 do
        local PartFrame = Mixin(CreateFrame("Frame", nil, UIParent), FrameBufferTestMixin)
        PartFrame:OnLoad()
        PartFrame:SetPoint("CENTER", 0, -150 + i * 100)
        PartFrame:Hide()
        table.insert(Frame.FrameBufferTestFrameParted, PartFrame)
    end

    function FrameOnKeyDown(self, key)
        -- print(string.format("key down (%s)", key))
        if RV32_KEYMAP[key] ~= nil then
            self.CPU.pressed_keys[RV32_KEYMAP[key]] = true
            self.CPU.sticky_keys[RV32_KEYMAP[key]] = true
        end
    end
    
    function FrameOnKeyUp(self, key)
        -- print(string.format("key up (%s)", key))
        if RV32_KEYMAP[key] ~= nil then
            self.CPU.pressed_keys[RV32_KEYMAP[key]] = false
        end
    end
    
    Frame.FrameBufferTestFrameParted[1].CPU = CPU
    Frame.FrameBufferTestFrameParted[1]:EnableKeyboard(true)
    Frame.FrameBufferTestFrameParted[1]:SetScript("OnKeyDown", FrameOnKeyDown)
    Frame.FrameBufferTestFrameParted[1]:SetScript("OnKeyUp", FrameOnKeyUp)

    Frame.opened = false
    Frame.precalc_partn = {}
    Frame.precalc_localy = {}
    Frame.PartHeight = 50

    -- Renders the frame from the given framebuffer address.
    -- @param framebuffer_addr The address of the framebuffer to render.
    function Frame:RenderFrame(framebuffer_addr)
        local read4 = self.CPU.memory:Read(4)
        for x = 0, 320-1, 4 do
            for y = 0, 200-1 do
                local offset = y * 320 + x
                local data = read4(framebuffer_addr + offset)

                for i=0,3 do
                    local data_loc = data % 0x100
                    local color = self.vga_to_rgb[data_loc]
                    local pixel = self.pixels[offset + i + 1]
                    if data_loc ~= pixel.color then
                        pixel:SetColorTexture(unpack(color))
                        pixel.color = data_loc
                    end
                    data = bit.rshift(data, 8)
                end
            end
        end
    end

    -- Shows the frame and enables keyboard input.
    function Frame:Show()
        self.FrameBufferTestFrameParted[1]:EnableKeyboard(true)
        for i = 1, 4 do
            self.FrameBufferTestFrameParted[i]:Show()
        end
        self.opened = true
    end

    -- Hides the frame and disables keyboard input.
    function Frame:Hide()
        self.FrameBufferTestFrameParted[1]:EnableKeyboard(false)
        for i = 1, 4 do
            self.FrameBufferTestFrameParted[i]:Hide()
        end
        self.opened = false
    end

    -- Toggles the visibility of the frame window.
    function Frame:ToggleWindow()
        if self.opened then
            self:Hide()
        else
            self:Show()
        end
    end

    return Frame
end
