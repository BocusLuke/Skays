-- SkaysGG V1.1
-- Welcome To SkaysGG
-- Made By Luke Luke Marcus#4347

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

getgenv().DragSpeed = 12

function CheckGui()
    local Gui = CoreGui:FindFirstChild("Skays")
    if Gui then
        Gui:Destroy()
    end
end
CheckGui()

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
Notification:Notify(
    {Title = "SkaysGG", Description = "Executed"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)

local Skays = {}

function Skays:RunWindow(version)
    local Skays = Instance.new("ScreenGui")
    local Shadow = Instance.new("ImageLabel")
    local Window = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Description = Instance.new("TextLabel")
    local PageUIGradient = Instance.new("UIGradient")
    local Keybinder = Instance.new("TextButton")
    local KeybinderUICorner = Instance.new("UICorner")
    local Close = Instance.new("TextButton")
    local CloseUICorner = Instance.new("UICorner")
    local Close_Image = Instance.new("ImageLabel")
    local CopyDiscord = Instance.new("TextButton")
    local CopyDiscordUICorner = Instance.new("UICorner")
    local WebsiteLink = Instance.new("TextButton")
    local WebsiteLinkUICorner = Instance.new("UICorner")
    local WindowUICorner = Instance.new("UICorner")
    local PageContainer = Instance.new("ScrollingFrame")
    local PageContainerUIListLayout = Instance.new("UIListLayout")
    local ContainerHolder = Instance.new("Frame")
    
    Skays.Name = "Skays"
    Skays.Parent = CoreGui
    Skays.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Skays.ResetOnSpawn = false
    
    Shadow.Name = "Shadow"
    Shadow.Parent = Skays
    Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Shadow.BackgroundTransparency = 1.000
    Shadow.BorderSizePixel = 0
    Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    Shadow.Size = UDim2.new(0, 0, 0, 0)
    Shadow.Image = "rbxassetid://9392573698"
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.ClipsDescendants = true
    
    Window.Name = "Window"
    Window.Parent = Shadow
    Window.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Window.BorderSizePixel = 0
    Window.Position = UDim2.new(0, 33, 0, 20)
    Window.Size = UDim2.new(0, 602, 0, 420)
    Window.ZIndex = 2
    
    Title.Name = "Title"
    Title.Parent = Window
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0, 16, 0, 14)
    Title.Size = UDim2.new(0, 74, 0, 16)
    Title.ZIndex = 3
    Title.Font = Enum.Font.GothamSemibold
    Title.Text = "SkaysGG"
    Title.TextColor3 = Color3.fromRGB(220, 220, 220)
    Title.TextSize = 14.000
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    Description.Name = "Description"
    Description.Parent = Window
    Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description.BackgroundTransparency = 1.000
    Description.BorderSizePixel = 0
    Description.Position = UDim2.new(0, 16, 0, 32)
    Description.Size = UDim2.new(0, 74, 0, 12)
    Description.ZIndex = 3
    Description.Font = Enum.Font.GothamSemibold
    Description.Text = version or "Version"
    Description.TextColor3 = Color3.fromRGB(255, 255, 255)
    Description.TextSize = 12.000
    Description.TextWrapped = true
    Description.TextXAlignment = Enum.TextXAlignment.Left
    
    PageUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(139, 190, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(159, 142, 255))}
    PageUIGradient.Name = "PageUIGradient"
    PageUIGradient.Parent = Description
    
    Keybinder.Name = "Keybinder"
    Keybinder.Parent = Window
    Keybinder.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Keybinder.BorderSizePixel = 0
    Keybinder.Position = UDim2.new(0, 378, 0, 14)
    Keybinder.Size = UDim2.new(0, 170, 0, 26)
    Keybinder.ZIndex = 3
    Keybinder.AutoButtonColor = false
    Keybinder.Font = Enum.Font.GothamSemibold
    Keybinder.Text = "Edit Keybind : None"
    Keybinder.TextColor3 = Color3.fromRGB(200, 200, 200)
    Keybinder.TextSize = 12.000
    Keybinder.MouseEnter:Connect(function()
        TweenService:Create(Keybinder, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()
    end)
    Keybinder.MouseLeave:Connect(function()
        TweenService:Create(Keybinder, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()
    end)

    function KeybinderFunction()
        Keybinder.MouseButton1Click:Connect(
            function(e)
                Keybinder.Text = "Edit Keybind : ..."
                local a, b = UserInputService.InputBegan:wait()
                if a.KeyCode.Name ~= "Unknown" then
                    Keybinder.Text = "Edit Keybind : "..a.KeyCode.Name
                    Key = a.KeyCode.Name
                    Notification:Notify(
                        {Title = "Window", Description = "Keybind Changed To "..tostring(a.KeyCode.Name)},
                        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
                    )
                end
            end
        )


        UserInputService.InputBegan:Connect(
        function(current, pressed)
            if not pressed then
                if current.KeyCode.Name == Key then
                    pcall(function()
                        Skays.Enabled = not Skays.Enabled
                    end)
                end
            end
        end
        )
    end

    KeybinderFunction()
    
    KeybinderUICorner.CornerRadius = UDim.new(0, 5)
    KeybinderUICorner.Name = "KeybinderUICorner"
    KeybinderUICorner.Parent = Keybinder
    
    Close.Name = "Close"
    Close.Parent = Window
    Close.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Close.BackgroundTransparency = 1.000
    Close.BorderSizePixel = 0
    Close.Position = UDim2.new(0, 562, 0, 14)
    Close.Size = UDim2.new(0, 26, 0, 26)
    Close.ZIndex = 3
    Close.AutoButtonColor = false
    Close.Font = Enum.Font.GothamSemibold
    Close.Text = ""
    Close.TextColor3 = Color3.fromRGB(200, 200, 200)
    Close.TextSize = 12.000
    Close.MouseButton1Click:Connect(function()
        TweenService:Create(Shadow, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 0, 0, 0)}):Play()
        wait(0.2)
        Skays:Destroy()
        Notification:Notify(
            {Title = "Window", Description = "Closed"},
            {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
        )
    end)
    
    CloseUICorner.CornerRadius = UDim.new(0, 5)
    CloseUICorner.Name = "CloseUICorner"
    CloseUICorner.Parent = Close
    
    Close_Image.Name = "Close_Image"
    Close_Image.Parent = Close
    Close_Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Close_Image.BackgroundTransparency = 1.000
    Close_Image.BorderSizePixel = 0
    Close_Image.Position = UDim2.new(0, 2, 0, 2)
    Close_Image.Size = UDim2.new(0, 22, 0, 22)
    Close_Image.ZIndex = 4
    Close_Image.Image = "http://www.roblox.com/asset/?id=6031094678"
    Close_Image.ImageColor3 = Color3.fromRGB(220, 220, 220)
    
    CopyDiscord.Name = "CopyDiscord"
    CopyDiscord.Parent = Window
    CopyDiscord.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    CopyDiscord.BorderSizePixel = 0
    CopyDiscord.Position = UDim2.new(0, 226, 0, 14)
    CopyDiscord.Size = UDim2.new(0, 138, 0, 26)
    CopyDiscord.ZIndex = 3
    CopyDiscord.AutoButtonColor = false
    CopyDiscord.Font = Enum.Font.GothamSemibold
    CopyDiscord.Text = "Copy Discord Invite"
    CopyDiscord.TextColor3 = Color3.fromRGB(200, 200, 200)
    CopyDiscord.TextSize = 12.000
    CopyDiscord.MouseEnter:Connect(function()
        TweenService:Create(CopyDiscord, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()
    end)
    CopyDiscord.MouseLeave:Connect(function()
        TweenService:Create(CopyDiscord, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()
    end)
    CopyDiscord.MouseButton1Click:Connect(function()
        setclipboard("https://discord.com/invite/skaysgaming")
        Notification:Notify(
            {Title = "Clipboard", Description = "Copied"},
            {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
        )
    end)
    
    CopyDiscordUICorner.CornerRadius = UDim.new(0, 5)
    CopyDiscordUICorner.Name = "CopyDiscordUICorner"
    CopyDiscordUICorner.Parent = CopyDiscord
    
    WebsiteLink.Name = "WebsiteLink"
    WebsiteLink.Parent = Window
    WebsiteLink.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    WebsiteLink.BorderSizePixel = 0
    WebsiteLink.Position = UDim2.new(0, 112, 0, 14)
    WebsiteLink.Size = UDim2.new(0, 100, 0, 26)
    WebsiteLink.ZIndex = 3
    WebsiteLink.AutoButtonColor = false
    WebsiteLink.Font = Enum.Font.GothamSemibold
    WebsiteLink.Text = "Website Link"
    WebsiteLink.TextColor3 = Color3.fromRGB(200, 200, 200)
    WebsiteLink.TextSize = 12.000
    WebsiteLink.MouseEnter:Connect(function()
        TweenService:Create(WebsiteLink, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()
    end)
    WebsiteLink.MouseLeave:Connect(function()
        TweenService:Create(WebsiteLink, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()
    end)
    WebsiteLink.MouseButton1Click:Connect(function()
        setclipboard("https://scriptpastebin.com/")
        Notification:Notify(
            {Title = "Clipboard", Description = "Copied"},
            {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
        )
    end)
    
    WebsiteLinkUICorner.CornerRadius = UDim.new(0, 5)
    WebsiteLinkUICorner.Name = "WebsiteLinkUICorner"
    WebsiteLinkUICorner.Parent = WebsiteLink
    
    WindowUICorner.CornerRadius = UDim.new(0, 5)
    WindowUICorner.Name = "WindowUICorner"
    WindowUICorner.Parent = Window
    
    PageContainer.Name = "PageContainer"
    PageContainer.Parent = Window
    PageContainer.Active = true
    PageContainer.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    PageContainer.BorderSizePixel = 0
    PageContainer.Position = UDim2.new(0, 0, 0, 58)
    PageContainer.Size = UDim2.new(0, 180, 0, 346)
    PageContainer.ZIndex = 3
    PageContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
    PageContainer.ScrollBarThickness = 2
    
    PageContainerUIListLayout.Name = "PageContainerUIListLayout"
    PageContainerUIListLayout.Parent = PageContainer
    PageContainerUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    PageContainerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    PageContainerUIListLayout.Padding = UDim.new(0, 16)

    local function ResizePageContainer()
        PageContainer.CanvasSize = UDim2.new(0, 0, 0, PageContainerUIListLayout.AbsoluteContentSize.Y + PageContainerUIListLayout.Padding.Offset)
    end
    PageContainerUIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(ResizePageContainer)
    
    ContainerHolder.Name = "ContainerHolder"
    ContainerHolder.Parent = Window
    ContainerHolder.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    ContainerHolder.BorderSizePixel = 0
    ContainerHolder.Position = UDim2.new(0, 196, 0, 58)
    ContainerHolder.Size = UDim2.new(0, 392, 0, 346)
    ContainerHolder.ZIndex = 3

    function DragGui(dragger, todrag, dragspeed)
        local runService = (game:GetService("RunService"));
        
        local gui = dragger
        local todrag = Shadow
        
        local dragging
        local dragInput
        local dragStart
        local startPos
        
        function Lerp(a, b, m)
            return a + (b - a) * m
        end;
        
        local lastMousePos
        local lastGoalPos
        local DRAG_SPEED = (dragspeed); -- // The speed of the UI darg.
        function Update(dt)
            if not (startPos) then return end;
            if not (dragging) and (lastGoalPos) then
                todrag.Position = UDim2.new(startPos.X.Scale, Lerp(todrag.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(todrag.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
                return 
            end;
        
            local delta = (lastMousePos - UserInputService:GetMouseLocation())
            local xGoal = (startPos.X.Offset - delta.X);
            local yGoal = (startPos.Y.Offset - delta.Y);
            lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
            todrag.Position = UDim2.new(startPos.X.Scale, Lerp(todrag.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(todrag.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
        end;
        
        gui.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = todrag.Position
                lastMousePos = UserInputService:GetMouseLocation()
        
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)
        
        gui.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        
        runService.Heartbeat:Connect(Update)
    end

    DragGui(Window, Shadow, getgenv().DragSpeed or 8)

    local function YSNEGK_fake_script() -- TextButton.LoadScript 
        local script = Instance.new('LocalScript', Shadow)
    
        TweenService:Create(Shadow, TweenInfo.new(0.2,Enum.EasingStyle.Quad, Enum.EasingDirection.Out),{Size = UDim2.new(0, 668, 0, 460)}):Play()
    end
    coroutine.wrap(YSNEGK_fake_script)()
    
    local Window = {}

    function Window:NewTab(title, opened)
        local Container = Instance.new("ScrollingFrame")
        local ContainerIn = Instance.new("Frame")
        local ContainerUIListLayout = Instance.new("UIListLayout")
        local Searchbar = Instance.new("Frame")
        local Search = Instance.new("TextBox")
        
        Container.Name = title or "Container"
        Container.Parent = ContainerHolder
        Container.Active = true
        Container.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
        Container.BorderSizePixel = 0
        Container.Size = UDim2.new(0, 400, 0, 346)
        Container.ZIndex = 4
        Container.CanvasSize = UDim2.new(0, 0, 1.5, 0)
        Container.ScrollBarThickness = 2
        
        ContainerIn.Name = "ContainerIn"
        ContainerIn.Parent = Container
        ContainerIn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ContainerIn.BackgroundTransparency = 1.000
        ContainerIn.BorderSizePixel = 0
        ContainerIn.Position = UDim2.new(0, 0, 0, 50)
        ContainerIn.Size = UDim2.new(0, 392, 0, 1)
        
        ContainerUIListLayout.Name = "ContainerUIListLayout"
        ContainerUIListLayout.Parent = ContainerIn
        ContainerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        ContainerUIListLayout.Padding = UDim.new(0, 10)
        
        Searchbar.Name = "Searchbar"
        Searchbar.Parent = Container
        Searchbar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Searchbar.BorderSizePixel = 0
        Searchbar.Size = UDim2.new(0, 390, 0, 30)
        Searchbar.ZIndex = 5
        
        Search.Name = "Search"
        Search.Parent = Searchbar
        Search.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Search.BackgroundTransparency = 1.000
        Search.BorderSizePixel = 0
        Search.Position = UDim2.new(0, 10, 0, 0)
        Search.Size = UDim2.new(0, 390, 0, 30)
        Search.ZIndex = 6
        Search.ClearTextOnFocus = false
        Search.Font = Enum.Font.GothamSemibold
        Search.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
        Search.PlaceholderText = "Search"
        Search.Text = ""
        Search.TextColor3 = Color3.fromRGB(220, 220, 220)
        Search.TextSize = 14.000
        Search.TextXAlignment = Enum.TextXAlignment.Left
        local scrollingframe=ContainerIn
        local searchbar=Search
        function UpdateInputOfSearchText()
            local InputText=string.upper(searchbar.Text)
            for _,button in pairs(scrollingframe:GetChildren())do
                if button:IsA("TextButton") or button:IsA("Frame") or button:IsA("TextLabel") then
                    if InputText==""or string.find(string.upper(button.Name),InputText)~=nil then
                        button.Visible=true
                    else
                        button.Visible=false
                    end
                end
            end
        end
        Search:GetPropertyChangedSignal("Text"):Connect(UpdateInputOfSearchText)

        local function ResizeContainer()
            Container.CanvasSize = UDim2.new(0, 0, 0, 40 + ContainerUIListLayout.AbsoluteContentSize.Y + ContainerUIListLayout.Padding.Offset)
        end
        ContainerUIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(ResizeContainer)

        local Page = Instance.new("TextButton")
        local PageUICorner = Instance.new("UICorner")
        local Pagetitle = Instance.new("TextLabel")
        local PageUIGradient = Instance.new("UIGradient")
        
        Page.Name = title or "Page"
        Page.Parent = PageContainer
        Page.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
        Page.BorderSizePixel = 0
        Page.Position = UDim2.new(0, 378, 0, 14)
        Page.Size = UDim2.new(0, 150, 0, 30)
        Page.ZIndex = 4
        Page.AutoButtonColor = false
        Page.Font = Enum.Font.GothamSemibold
        Page.Text = ""
        Page.TextColor3 = Color3.fromRGB(200, 200, 200)
        Page.TextSize = 12.000
        Page.BackgroundTransparency = 1
        
        PageUICorner.CornerRadius = UDim.new(0, 2)
        PageUICorner.Name = "PageUICorner"
        PageUICorner.Parent = Page
        
        Pagetitle.Name = "Pagetitle"
        Pagetitle.Parent = Page
        Pagetitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Pagetitle.BackgroundTransparency = 1.000
        Pagetitle.BorderSizePixel = 0
        Pagetitle.Position = UDim2.new(0, 10, 0, 0)
        Pagetitle.Size = UDim2.new(0, 150, 0, 30)
        Pagetitle.ZIndex = 5
        Pagetitle.Font = Enum.Font.GothamSemibold
        Pagetitle.Text = title or "Page"
        Pagetitle.TextColor3 = Color3.fromRGB(220, 220, 220)
        Pagetitle.TextSize = 14.000
        Pagetitle.TextXAlignment = Enum.TextXAlignment.Left
        
        PageUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(139, 190, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(159, 142, 255))}
        PageUIGradient.Name = "PageUIGradient"
        PageUIGradient.Parent = Page

        if opened then
            Container.Visible = true
            Page.ClipsDescendants = true
            TweenService:Create(Page, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0}):Play()
        else
            Container.Visible = false
            Page.ClipsDescendants = false
            TweenService:Create(Page, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 1}):Play()
        end

        Page.MouseEnter:Connect(function()
            if Page.ClipsDescendants == true then
                TweenService:Create(Page, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0}):Play()
            else
                TweenService:Create(Page, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0.8}):Play()
            end
        end)
        Page.MouseLeave:Connect(function()
            if Page.ClipsDescendants == true then
                TweenService:Create(Page, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0}):Play()
            else
                TweenService:Create(Page, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 1}):Play()
            end
        end)
        Page.MouseButton1Click:Connect(function()
            for i, v in pairs(ContainerHolder:GetChildren()) do
                if v:IsA("ScrollingFrame") then
                    v.Visible = false
                end
            end
            for i, tab in pairs(PageContainer:GetChildren()) do
                if tab:IsA("TextButton") then
                    tab.ClipsDescendants = false
                    TweenService:Create(tab, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 1}):Play()
                end
            end
            Container.Visible = true
            Page.ClipsDescendants = true
            TweenService:Create(Page, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0}):Play()
        end)

        local Tab = {}

        function Tab:NewSection(sectiontitle)
            local Section = Instance.new("Frame")
            local SectionTopFrame = Instance.new("Frame")
            local SectionTopFrameUICorner = Instance.new("UICorner")
            local SectionTopFrameUIGradient = Instance.new("UIGradient")
            local SectionTitle = Instance.new("TextLabel")
            local SectionUICorner = Instance.new("UICorner")
            local SectionInner = Instance.new("Frame")
            local SectionInnerUIListLayout = Instance.new("UIListLayout")
            
            Section.Name = sectiontitle or "Section"
            Section.Parent = ContainerIn
            Section.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
            Section.Position = UDim2.new(0, 0, -8.82010909e-08, 0)
            Section.Size = UDim2.new(0, 392, 0, 40)
            Section.ZIndex = 5
            
            SectionTopFrame.Name = "SectionTopFrame"
            SectionTopFrame.Parent = Section
            SectionTopFrame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
            SectionTopFrame.Size = UDim2.new(0, 392, 0, 30)
            SectionTopFrame.ZIndex = 5
            
            SectionTopFrameUICorner.CornerRadius = UDim.new(0, 2)
            SectionTopFrameUICorner.Name = "SectionTopFrameUICorner"
            SectionTopFrameUICorner.Parent = SectionTopFrame
            
            SectionTopFrameUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(139, 190, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(159, 142, 255))}
            SectionTopFrameUIGradient.Name = "SectionTopFrameUIGradient"
            SectionTopFrameUIGradient.Parent = SectionTopFrame
            
            SectionTitle.Name = "SectionTitle"
            SectionTitle.Parent = SectionTopFrame
            SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionTitle.BackgroundTransparency = 1.000
            SectionTitle.BorderSizePixel = 0
            SectionTitle.Position = UDim2.new(0, 10, 0, 0)
            SectionTitle.Size = UDim2.new(0, 382, 0, 30)
            SectionTitle.ZIndex = 6
            SectionTitle.Font = Enum.Font.GothamSemibold
            SectionTitle.Text = sectiontitle or "Section Title"
            SectionTitle.TextColor3 = Color3.fromRGB(220, 220, 220)
            SectionTitle.TextSize = 14.000
            SectionTitle.TextXAlignment = Enum.TextXAlignment.Left
            
            SectionUICorner.CornerRadius = UDim.new(0, 2)
            SectionUICorner.Name = "SectionUICorner"
            SectionUICorner.Parent = Section
            
            SectionInner.Name = "SectionInner"
            SectionInner.Parent = Section
            SectionInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SectionInner.BackgroundTransparency = 1.000
            SectionInner.BorderSizePixel = 0
            SectionInner.Position = UDim2.new(0, 0, 0, 40)
            SectionInner.Size = UDim2.new(0, 392, 0, 1)
            SectionInner.ZIndex = 6
            
            SectionInnerUIListLayout.Name = "SectionInnerUIListLayout"
            SectionInnerUIListLayout.Parent = SectionInner
            SectionInnerUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            SectionInnerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            SectionInnerUIListLayout.Padding = UDim.new(0, 10)

            local function ResizeSection()
                Section.Size = UDim2.new(0, 392, 0, 40 + SectionInnerUIListLayout.AbsoluteContentSize.Y + SectionInnerUIListLayout.Padding.Offset)
            end
            SectionInnerUIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(ResizeSection)

            local Section = {}

            function Section:NewButton(buttontitle, buttoncallback)
                local Callback = buttoncallback or function() end
                local Button = Instance.new("TextButton")
                local ButtonUICorner = Instance.new("UICorner")
                local ButtonTitle = Instance.new("TextLabel")
                local ButtonFrame = Instance.new("Frame")
                local ButtonFrameUICorner = Instance.new("UICorner")
                local SectionTopFrameUIGradient = Instance.new("UIGradient")
                
                Button.Name = buttontitle or "Button"
                Button.Parent = SectionInner
                Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Button.BorderSizePixel = 0
                Button.Position = UDim2.new(0, 378, 0, 14)
                Button.Size = UDim2.new(0, 392, 0, 30)
                Button.ZIndex = 7
                Button.AutoButtonColor = false
                Button.Font = Enum.Font.GothamSemibold
                Button.Text = ""
                Button.TextColor3 = Color3.fromRGB(200, 200, 200)
                Button.TextSize = 12.000
                
                ButtonUICorner.CornerRadius = UDim.new(0, 2)
                ButtonUICorner.Name = "ButtonUICorner"
                ButtonUICorner.Parent = Button
                
                ButtonTitle.Name = "ButtonTitle"
                ButtonTitle.Parent = Button
                ButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ButtonTitle.BackgroundTransparency = 1.000
                ButtonTitle.BorderSizePixel = 0
                ButtonTitle.Size = UDim2.new(0, 390, 0, 30)
                ButtonTitle.ZIndex = 9
                ButtonTitle.Font = Enum.Font.GothamSemibold
                ButtonTitle.Text = buttontitle or "Nil Button"
                ButtonTitle.TextColor3 = Color3.fromRGB(200, 200, 200)
                ButtonTitle.TextSize = 14.000
                
                ButtonFrame.Name = "ButtonFrame"
                ButtonFrame.Parent = Button
                ButtonFrame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
                ButtonFrame.BackgroundTransparency = 1.000
                ButtonFrame.Size = UDim2.new(0, 392, 0, 30)
                ButtonFrame.ZIndex = 8
                
                ButtonFrameUICorner.CornerRadius = UDim.new(0, 2)
                ButtonFrameUICorner.Name = "ButtonFrameUICorner"
                ButtonFrameUICorner.Parent = ButtonFrame
                
                SectionTopFrameUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(139, 190, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(159, 142, 255))}
                SectionTopFrameUIGradient.Name = "SectionTopFrameUIGradient"
                SectionTopFrameUIGradient.Parent = ButtonFrame

                Button.MouseEnter:Connect(function()
                    TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()
                end)
                Button.MouseLeave:Connect(function()
                    TweenService:Create(Button, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
                    TweenService:Create(ButtonFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 1}):Play()
                end)
                Button.MouseButton1Down:Connect(function()
                    TweenService:Create(ButtonFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0}):Play()
                end)
                Button.MouseButton1Up:Connect(function()
                    TweenService:Create(ButtonFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 1}):Play()
                end)
                Button.MouseButton1Click:Connect(function()
                    pcall(function()
                        Callback()
                    end)
                end)
            end

            function Section:NewToggle(toggletitle, togglecallback)
                local Callback = togglecallback or function() end
                local Toggle = Instance.new("TextButton")
                local ToggleUICorner = Instance.new("UICorner")
                local ToggleTitle = Instance.new("TextLabel")
                local ToggleImage = Instance.new("ImageLabel")
                local ButtonFrame = Instance.new("Frame")
                local SectionTopFrameUIGradient = Instance.new("UIGradient")
                
                Toggle.Name = toggletitle or "Toggle"
                Toggle.Parent = SectionInner
                Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Toggle.BorderSizePixel = 0
                Toggle.Position = UDim2.new(0, 378, 0, 14)
                Toggle.Size = UDim2.new(0, 392, 0, 30)
                Toggle.ZIndex = 7
                Toggle.AutoButtonColor = false
                Toggle.Font = Enum.Font.GothamSemibold
                Toggle.Text = ""
                Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
                Toggle.TextSize = 12.000
                
                ToggleUICorner.CornerRadius = UDim.new(0, 2)
                ToggleUICorner.Name = "ToggleUICorner"
                ToggleUICorner.Parent = Toggle
                
                ToggleTitle.Name = "ToggleTitle"
                ToggleTitle.Parent = Toggle
                ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleTitle.BackgroundTransparency = 1.000
                ToggleTitle.BorderSizePixel = 0
                ToggleTitle.Position = UDim2.new(0, 10, 0, 0)
                ToggleTitle.Size = UDim2.new(0, 342, 0, 30)
                ToggleTitle.ZIndex = 9
                ToggleTitle.Font = Enum.Font.GothamSemibold
                ToggleTitle.Text = toggletitle or "Toggle"
                ToggleTitle.TextColor3 = Color3.fromRGB(200, 200, 200)
                ToggleTitle.TextSize = 14.000
                ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left
                
                ToggleImage.Name = "ToggleImage"
                ToggleImage.Parent = Toggle
                ToggleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleImage.BackgroundTransparency = 1.000
                ToggleImage.BorderSizePixel = 0
                ToggleImage.Position = UDim2.new(0, 367, 0, 5)
                ToggleImage.Size = UDim2.new(0, 20, 0, 20)
                ToggleImage.ZIndex = 10
                ToggleImage.Image = "http://www.roblox.com/asset/?id=6031068420"
                ToggleImage.ImageColor3 = Color3.fromRGB(180, 180, 180)

                ButtonFrame.Name = "ButtonFrame"
                ButtonFrame.Parent = Toggle
                ButtonFrame.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
                ButtonFrame.BackgroundTransparency = 1.000
                ButtonFrame.Size = UDim2.new(0, 392, 0, 30)
                ButtonFrame.ZIndex = 8

                SectionTopFrameUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(139, 190, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(159, 142, 255))}
                SectionTopFrameUIGradient.Name = "SectionTopFrameUIGradient"
                SectionTopFrameUIGradient.Parent = ButtonFrame

                Toggle.MouseEnter:Connect(function()
                    TweenService:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()
                end)
                Toggle.MouseLeave:Connect(function()
                    TweenService:Create(Toggle, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
                    TweenService:Create(ButtonFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 1}):Play()
                end)
                Toggle.MouseButton1Down:Connect(function()
                    TweenService:Create(ButtonFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 0}):Play()
                end)
                Toggle.MouseButton1Up:Connect(function()
                    TweenService:Create(ButtonFrame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),{BackgroundTransparency = 1}):Play()
                end)
                local Toggled = false
                Toggle.MouseButton1Click:Connect(function()
                    if Toggled then
                        Toggled = false
                        ToggleImage.Image = "http://www.roblox.com/asset/?id=6031068420"
                        pcall(function()
                            Callback(Toggled)
                        end)
                    else
                        Toggled = true
                        ToggleImage.Image = "http://www.roblox.com/asset/?id=6031068421"
                        pcall(function()
                            Callback(Toggled)
                        end)
                    end
                end)
            end

            function Section:Outline()
                local Outline = Instance.new("TextButton")
                local ToggleUICorner = Instance.new("UICorner")
                
                Outline.Name = "Outline"
                Outline.Parent = SectionInner
                Outline.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Outline.BorderSizePixel = 0
                Outline.Position = UDim2.new(0, 378, 0, 14)
                Outline.Size = UDim2.new(0, 392, 0, 2)
                Outline.ZIndex = 7
                Outline.AutoButtonColor = false
                Outline.Font = Enum.Font.GothamSemibold
                Outline.Text = ""
                Outline.TextColor3 = Color3.fromRGB(200, 200, 200)
                Outline.TextSize = 12.000
                
                ToggleUICorner.CornerRadius = UDim.new(0, 2)
                ToggleUICorner.Name = "ToggleUICorner"
                ToggleUICorner.Parent = Toggle
            end

            return Section
        end

        return Tab
    end

    return Window
end
local Window = Skays:RunWindow("Lite v1.8")

function PickupCurrency(name)
    local args = {
        [1] = tostring(name)
    }

    game:GetService("ReplicatedStorage").Knit.Services.WorldCurrencyService.RE.PickupCurrency:FireServer(unpack(args))
end

-- Farms
local Farms = Window:NewTab("Farms", true)
local Farms_Farms = Farms:NewSection("Farms")
Farms_Farms:NewToggle("AutoCollect All Markers", function(State)
    getgenv().AutoGrab = State
    local Plr = game:GetService("Players").LocalPlayer
    local Char = Plr.Character
    local Children = workspace:GetDescendants()
    local MarkerGUI = Plr.PlayerGui.Menu.AllMarkers.Markers
    
    for index, child in pairs(Children) do
        pcall(function()
            if (child.Name == "Color 1" and MarkerGUI[child.Parent.Name].BackgroundColor3 == Color3.fromRGB(0, 0, 0) and (child.Parent.Name ~= "Catzo Marker" and child:FindFirstChildWhichIsA("TouchTransmitter"))) then
                local i = tick()
                while Char.HumanoidRootPart.CFrame ~= child.CFrame do
                    Char.HumanoidRootPart.CFrame = child.CFrame
                    Char.Humanoid.Jump = true
                    if tick() - i >= 7 then
                        i = tick()
                        break;
                    end
                    if not getgenv().AutoGrab then
                        game.Players.LocalPlayer.Character.Humanoid.Health = 0
                        break;
                    end
                    wait()
                end
            end
        end)
    end
end)

Farms_Farms:NewButton("Back To Spawn", function() game.Players.LocalPlayer.Character.Humanoid.Health = 0 end)

-- Disconnecter
if getgenv().AutoGrab then getgenv().AutoGrab = false end

return Skays
