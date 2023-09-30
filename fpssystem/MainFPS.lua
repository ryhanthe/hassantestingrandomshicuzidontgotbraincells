local scrimsfpscounter = Instance.new("ScreenGui")
local fpscounterlogo = Instance.new("ImageButton")
local fpslabel = Instance.new("TextLabel")
--Jst Stuff dat r added


scrimsfpscounter.Name = "scrimsfpscounter"
scrimsfpscounter.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
scrimsfpscounter.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
--Nun to worry abt leave it alone

fpscounterlogo.Name = "fpscounterlogo" -- label name
fpscounterlogo.Parent = scrimsfpscounter
fpscounterlogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255) --main color
fpscounterlogo.BackgroundTransparency = 1.000
fpscounterlogo.BorderColor3 = Color3.fromRGB(0, 0, 0) --Side color
fpscounterlogo.BorderSizePixel = 0
fpscounterlogo.Position = UDim2.new(0.476239055, 0, -0.0173814557, 0) --y,x
fpscounterlogo.Size = UDim2.new(0, 77, 0, 35)
fpscounterlogo.Image = "rbxassetid://14917961631" --Logo ID
--Logo
fpslabel.Name = "fpslabel"
fpslabel.Parent = fpscounterlogo
fpslabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
fpslabel.BackgroundTransparency = 1.000 --BackgroundTransparency
fpslabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
fpslabel.BorderSizePixel = 0
fpslabel.Position = UDim2.new(0.24821651, 0, -0.714285731, 0) --y,x
fpslabel.Size = UDim2.new(0, 37, 0, 25)
fpslabel.Font = Enum.Font.Arcade
fpslabel.Text = ""
fpslabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- text color
fpslabel.TextSize = 18.000 -- text size
fpslabel.TextStrokeTransparency = 0.000


--scripts to run
--local script for fps counter to work
local function RSWLUDR_fake_script() -- fpslabel.fpscounterlocalscript 
	local script = Instance.new('LocalScript', fpslabel)

	local RS = game:GetService("RunService")
	local frames = 0
	
	RS.RenderStepped:Connect(function()
		frames = frames + 1
	end)
	
	while wait(1) do -- cool down
		script.Parent.Text = ""..frames --shows fps
		frames = 0
	end
end
coroutine.wrap(RSWLUDR_fake_script)()
--games supported script
local function ERFBOOK_fake_script() -- fpslabel.supportedgame 
	local script = Instance.new('Script', fpslabel)

	if game.PlaceId == 2753915549 then
		print("BloxfruitFPS,")
	else
		print("Game not Supported")
	end
	if game.PlaceId == 2788229376 then
		print("Dahood,")
	else
		print("Game not Supported")
	end
	if game.PlaceId == 9825515356 then
		print("DhCustoms,")
	else
		print("Game not Supported")
	end
end
coroutine.wrap(ERFBOOK_fake_script)()
