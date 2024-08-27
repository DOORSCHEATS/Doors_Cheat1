local function _init()
	if _G.AlreadyRan then
		warn("you already ran this lil bro.")
		return
	else
		_G.AlreadyRan = true	
	end
	
	print(_G.AlreadyRan, "thanks for using MHub")

	local MHubUI = game.Players.LocalPlayer.PlayerGui:FindFirstChild("MHub")

	MHubUI = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)

	MHubUI.IgnoreGuiInset = true
	MHubUI.Enabled = true

	local MainFrame = Instance.new("Frame", MHubUI)
	MainFrame.Name = "Main"

	MainFrame.Size = UDim2.fromScale(0.301, 0.741)
	MainFrame.Position = UDim2.fromScale(0.5, 0.5)
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)

	MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	MainFrame.BorderColor3 = Color3.fromRGB(0, 85, 255)
	MainFrame.BorderSizePixel = 2
	MainFrame.Visible = true

	local TitleMain = Instance.new("TextLabel", MainFrame)

	TitleMain.Name = "Title"
	TitleMain.BackgroundTransparency = 1
	TitleMain.Size = UDim2.fromScale(0.97, 0.063)
	TitleMain.Position = UDim2.fromScale(0.015, 0)
	TitleMain.TextScaled = true
	TitleMain.TextColor3 = Color3.fromRGB(255, 255, 255)
 
	TitleMain.Text = string.format("MedHub DOORS | Welcome : %s", game.Players.LocalPlayer.Name)

	game.UserInputService.InputBegan:Connect(function(Input)
		if Input.KeyCode == Enum.KeyCode.Home then
			if MHubUI then
				MHubUI:Destroy()

				_G.AlreadyRan = false
			end
		end
	end)
end

_init()