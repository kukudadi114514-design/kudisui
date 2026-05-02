



local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")


if playerGui:FindFirstChild("iOS26_UI") then
	playerGui.iOS26_UI:Destroy()
end


local screenGui = Instance.new("ScreenGui")
screenGui.Name = "iOS26_UI"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui


local blurBackground = Instance.new("Frame")
blurBackground.Size = UDim2.new(1, 0, 1, 0)
blurBackground.BackgroundTransparency = 0.65
blurBackground.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
blurBackground.BorderSizePixel = 0
blurBackground.Parent = screenGui


local grain = Instance.new("ImageLabel")
grain.Size = UDim2.new(1, 0, 1, 0)
grain.BackgroundTransparency = 1
grain.Image = "rbxassetid://14356072992" 
grain.ImageTransparency = 0.9
grain.ScaleType = Enum.ScaleType.Tile
grain.TileSize = UDim2.new(0, 64, 0, 64)
grain.Parent = blurBackground


local blurFrame = Instance.new("Frame")
blurFrame.Size = UDim2.new(1, 0, 1, 0)
blurFrame.BackgroundTransparency = 0.95
blurFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
blurFrame.BorderSizePixel = 0
blurFrame.Parent = blurBackground


local card = Instance.new("Frame")
card.Size = UDim2.new(0, 340, 0, 210)
card.Position = UDim2.new(0.5, -170, 0.4, -105)
card.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
card.BackgroundTransparency = 0.25
card.BorderSizePixel = 0
card.ClipsDescendants = true
card.Parent = screenGui


local cardCorner = Instance.new("UICorner")
cardCorner.CornerRadius = UDim.new(0, 24)
cardCorner.Parent = card


local glassOverlay = Instance.new("Frame")
glassOverlay.Size = UDim2.new(1, 0, 1, 0)
glassOverlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
glassOverlay.BackgroundTransparency = 0.92
glassOverlay.BorderSizePixel = 0
glassOverlay.Parent = card

local glassCorner = Instance.new("UICorner")
glassCorner.CornerRadius = UDim.new(0, 24)
glassCorner.Parent = glassOverlay


local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 255, 255)
stroke.Transparency = 0.75
stroke.Thickness = 1.5
stroke.Parent = card


local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -20, 0, 36)
titleLabel.Position = UDim2.new(0, 10, 0, 12)
titleLabel.BackgroundTransparency = 1
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Text = "Enter Passcode"
titleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
titleLabel.TextSize = 24
titleLabel.Parent = card


local dotsContainer = Instance.new("Frame")
dotsContainer.Size = UDim2.new(0, 240, 0, 30)
dotsContainer.Position = UDim2.new(0.5, -120, 0, 70)
dotsContainer.BackgroundTransparency = 1
dotsContainer.Parent = card

local dots = {}
local dotSize = 18
local dotSpacing = 30
local totalDots = 7  

for i = 1, totalDots do
	local dot = Instance.new("Frame")
	dot.Size = UDim2.new(0, dotSize, 0, dotSize)
	dot.Position = UDim2.new(0, (i-1) * dotSpacing + (240 - totalDots * dotSpacing) / 2, 0.5, -dotSize/2)
	dot.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
	dot.BackgroundTransparency = 0.4
	dot.BorderSizePixel = 0
	dot.Parent = dotsContainer

	local dotCorner = Instance.new("UICorner")
	dotCorner.CornerRadius = UDim.new(1, 0)
	dotCorner.Parent = dot
	table.insert(dots, dot)
end


local inputBox = Instance.new("TextBox")
inputBox.Size = UDim2.new(0, 240, 0, 40)
inputBox.Position = UDim2.new(0.5, -120, 0, 65)
inputBox.BackgroundTransparency = 1
inputBox.Text = ""
inputBox.Font = Enum.Font.Gotham
inputBox.TextSize = 1
inputBox.TextColor3 = Color3.fromRGB(0, 0, 0)
inputBox.PlaceholderText = ""
inputBox.ClearTextOnFocus = false
inputBox.TextXAlignment = Enum.TextXAlignment.Center
inputBox.Parent = card


inputBox:CaptureFocus()


local errorLabel = Instance.new("TextLabel")
errorLabel.Size = UDim2.new(1, -20, 0, 20)
errorLabel.Position = UDim2.new(0, 10, 0, 132)
errorLabel.BackgroundTransparency = 1
errorLabel.Font = Enum.Font.Gotham
errorLabel.Text = ""
errorLabel.TextColor3 = Color3.fromRGB(255, 69, 58)
errorLabel.TextSize = 14
errorLabel.TextTransparency = 1
errorLabel.Parent = card


local submitButton = Instance.new("TextButton")
submitButton.Size = UDim2.new(0, 120, 0, 36)
submitButton.Position = UDim2.new(0.5, -60, 0, 160)
submitButton.BackgroundColor3 = Color3.fromRGB(0, 122, 255)
submitButton.BackgroundTransparency = 0.15
submitButton.BorderSizePixel = 0
submitButton.Text = "Unlock"
submitButton.Font = Enum.Font.GothamBold
submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
submitButton.TextSize = 16
submitButton.Parent = card

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 12)
buttonCorner.Parent = submitButton


local mainScreen = Instance.new("Frame")
mainScreen.Size = UDim2.new(1, 0, 1, 0)
mainScreen.BackgroundTransparency = 1
mainScreen.Visible = false
mainScreen.Parent = screenGui


local welcomeLabel = Instance.new("TextLabel")
welcomeLabel.Size = UDim2.new(0, 300, 0, 50)
welcomeLabel.Position = UDim2.new(0.5, -150, 0.3, -25)
welcomeLabel.BackgroundTransparency = 1
welcomeLabel.Font = Enum.Font.GothamBold
welcomeLabel.Text = "Welcome"
welcomeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
welcomeLabel.TextSize = 40
welcomeLabel.Parent = mainScreen


local subLabel = Instance.new("TextLabel")
subLabel.Size = UDim2.new(0, 300, 0, 30)
subLabel.Position = UDim2.new(0.5, -150, 0.4, -15)
subLabel.BackgroundTransparency = 1
subLabel.Font = Enum.Font.Gotham
subLabel.Text = "iOS 26 · 毛玻璃质感"
subLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
subLabel.TextSize = 18
subLabel.Parent = mainScreen


local function tweenObject(obj, props, easing, duration, delay)
	local tweenInfo = TweenInfo.new(duration, easing, Enum.EasingDirection.Out, 0, false, delay or 0)
	local tween = TweenService:Create(obj, tweenInfo, props)
	tween:Play()
	return tween
end


local function elasticAppear(obj)
	obj.Size = UDim2.new(0, 340, 0, 0) 
	obj.Position = UDim2.new(0.5, -170, 0.4, 0)
	tweenObject(obj, {Size = UDim2.new(0, 340, 0, 210)}, Enum.EasingStyle.Elastic, 0.9)
end


local function shakeCard()
	local originalPos = card.Position
	local shakeAmount = 6
	local shakeCount = 4
	local duration = 0.05
	for i = 1, shakeCount do
		local offset = (i % 2 == 0) and shakeAmount or -shakeAmount
		tweenObject(card, {Position = UDim2.new(0.5, -170 + offset, 0.4, -105)}, Enum.EasingStyle.Quad, duration)
		task.wait(duration)
	end
	tweenObject(card, {Position = originalPos}, Enum.EasingStyle.Quad, 0.1)
end


local function updateDots(passwordLength)
	for i, dot in ipairs(dots) do
		if i <= passwordLength then
			tweenObject(dot, {BackgroundColor3 = Color3.fromRGB(0, 122, 255), BackgroundTransparency = 0.1}, Enum.EasingStyle.Quad, 0.15)
		else
			tweenObject(dot, {BackgroundColor3 = Color3.fromRGB(180, 180, 180), BackgroundTransparency = 0.4}, Enum.EasingStyle.Quad, 0.15)
		end
	end
end


local function showSuccess()
	
	for _, dot in ipairs(dots) do
		tweenObject(dot, {BackgroundColor3 = Color3.fromRGB(52, 199, 89), BackgroundTransparency = 0}, Enum.EasingStyle.Quad, 0.2)
	end
	task.wait(0.3)

	
	card:TweenSizeAndPosition(
		UDim2.new(0, 0, 0, 0),
		UDim2.new(0.5, 0, 0.4, 0),
		Enum.EasingDirection.In,
		Enum.EasingStyle.Back,
		0.4,
		true
	)
	task.wait(0.4)

	
	mainScreen.Visible = true
	card.Visible = false
	blurBackground.Visible = false

	
	welcomeLabel.TextTransparency = 1
	subLabel.TextTransparency = 1
	tweenObject(welcomeLabel, {TextTransparency = 0, Position = UDim2.new(0.5, -150, 0.25, -25)}, Enum.EasingStyle.Elastic, 1.2)
	tweenObject(subLabel, {TextTransparency = 0}, Enum.EasingStyle.Quad, 0.5)
	
	
	task.wait(4)
	screenGui:Destroy()
end


local function showError()
	errorLabel.TextTransparency = 0
	errorLabel.Text = "Incorrect Passcode"
	shakeCard()
	tweenObject(errorLabel, {TextTransparency = 1}, Enum.EasingStyle.Quad, 1.5, 0.5)
end


local correctPasscode = "ccontop"
local submitting = false

local function tryPasscode(pass)
	if pass == correctPasscode and string.len(pass) == totalDots and not submitting then
		submitting = true
		updateDots(#pass)
		showSuccess()
	elseif string.len(pass) == totalDots and pass ~= correctPasscode and not submitting then
		submitting = true
		showError()
		task.wait(2)
		inputBox.Text = ""
		updateDots(0)
		submitting = false
		inputBox:CaptureFocus()
	else
		submitting = false
	end
end

inputBox:GetPropertyChangedSignal("Text"):Connect(function()
	local text = inputBox.Text
	
	if #text > totalDots then
		inputBox.Text = string.sub(text, 1, totalDots)
		return
	end
	updateDots(#text)
	
	if #text == totalDots then
		tryPasscode(text)
	else
		
		if errorLabel.TextTransparency < 1 then
			tweenObject(errorLabel, {TextTransparency = 1}, Enum.EasingStyle.Quad, 0.2)
		end
		submitting = false
	end
end)

submitButton.MouseButton1Click:Connect(function()
	local text = inputBox.Text
	if #text > 0 then
		tryPasscode(text)
	end
end)


blurBackground.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		inputBox:CaptureFocus()
	end
end)


UserInputService.TextBoxFocused:Connect(function(textbox)
	if textbox == inputBox then
		tweenObject(card, {Position = UDim2.new(0.5, -170, 0.25, -105)}, Enum.EasingStyle.Quad, 0.3)
	end
end)

UserInputService.TextBoxFocusReleased:Connect(function(textbox)
	if textbox == inputBox then
		tweenObject(card, {Position = UDim2.new(0.5, -170, 0.4, -105)}, Enum.EasingStyle.Quad, 0.3)
	end
end)


card.Size = UDim2.new(0, 340, 0, 0)
card.Position = UDim2.new(0.5, -170, 0.4, 50) 
elasticAppear(card)

local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

local gui = Instance.new("ScreenGui")
gui.Name = "Logo"
gui.ResetOnSpawn = false
gui.Parent = CoreGui

local logo = Instance.new("ImageLabel")
logo.Size = UDim2.new(0, 140, 0, 140)            
logo.Position = UDim2.new(0.5, -70, 0.5, -70)
logo.BackgroundTransparency = 1
logo.Image = "rbxassetid://81196727397346"       
logo.ImageTransparency = 1                        
logo.Parent = gui


logo.Position = UDim2.new(0.5, -70, 0.5, 100)    
local fadeIn = TweenService:Create(logo, TweenInfo.new(1.0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    ImageTransparency = 0,
    Position = UDim2.new(0.5, -70, 0.5, 50)     
})
fadeIn:Play()

fadeIn.Completed:Connect(function()
    task.wait(1.0)  
    local fadeOut = TweenService:Create(logo, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
        ImageTransparency = 1,
        Position = UDim2.new(0.5, -70, 0.5, -50) 
    })
    fadeOut:Play()
    fadeOut.Completed:Connect(function()
        gui:Destroy()
    end)
end)
