-- GUI to Lua 
-- Version: 0.0.3

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Name_1 = Instance.new("TextLabel")
local Quote_1 = Instance.new("TextLabel")
local player = game.Players.LocalPlayer

-- Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Name_1.Name = "Name"
Name_1.Parent = ScreenGui
Name_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Name_1.BackgroundTransparency = 1
Name_1.BorderColor3 = Color3.fromRGB(0,0,0)
Name_1.BorderSizePixel = 0
Name_1.Position = UDim2.new(0.424357027, 0,0.864726007, 0)
Name_1.Size = UDim2.new(0, 200,0, 50)
Name_1.Font = Enum.Font.DenkOne
Name_1.Text = "PlayerName"
Name_1.TextColor3 = Color3.fromRGB(255,255,255)
Name_1.TextSize = 24

Quote_1.Name = "Quote"
Quote_1.Parent = ScreenGui
Quote_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Quote_1.BackgroundTransparency = 1
Quote_1.BorderColor3 = Color3.fromRGB(255,255,255)
Quote_1.BorderSizePixel = 0
Quote_1.Position = UDim2.new(0.424357027, 0,0.91438359, 0)
Quote_1.Size = UDim2.new(0, 200,0, 50)
Quote_1.Font = Enum.Font.DenkOne
Quote_1.LineHeight = 0
Quote_1.Text = "NOne"
Quote_1.TextColor3 = Color3.fromRGB(255,255,255)
Quote_1.TextSize = 36
Quote_1.TextStrokeColor3 = Color3.fromRGB(255,255,255)
Quote_1.TextWrapped = true

local script = Instance.new("LocalScript",ScreenGui)
local textlabel = Quote_1
local nameLabel = Name_1
local Text
local ts = game:GetService("TweenService")
local RunService = game:GetService("RunService")

Name_1.Text = player.Name

local function fadeOut(label, duration)
	local time = 0
	local startTransparency = label.TextTransparency
	while time < duration do
		local alpha = time / duration
		label.TextTransparency = startTransparency + (1 - startTransparency) * alpha
		time = time + RunService.RenderStepped:Wait()
	end
	label.TextTransparency = 1
end

function setText(word)
	Text = word

	for i = 1, #Text do
		textlabel.Text = string.sub(Text, 1, i)
		textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		ts:Create(textlabel,TweenInfo.new(.5),{TextColor3 = Color3.fromRGB(255, 15, 199)}):Play()
		wait(0.05)
	end
end

function seText(word)
	Text = word

	for i = 1, #Text do
		textlabel.Text = string.sub(Text, 1, i)
		wait(0.05)
	end
end

seText("That's rude.")
wait(2)
setText("It's Pure Love.")

task.spawn(function()
	fadeOut(nameLabel, 2) -- 2초 동안 사라지게
end)

task.spawn(function()
	fadeOut(textlabel, 2)
end)

