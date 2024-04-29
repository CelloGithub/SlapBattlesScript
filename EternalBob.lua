--[[
                         ▄▄                                         
 ▄█▀▀▀█▄█                ██             ██      ▀███▀▀▀██▄          
▄██    ▀█                               ██        ██    ██          
▀███▄    ▄██▀██▀███▄███▀███ ▀████████▄██████      ██    ████▀   ▀██▀
  ▀█████▄█▀  ██  ██▀ ▀▀  ██   ██   ▀██  ██        ██▀▀▀█▄▄ ██   ▄█  
▄     ▀███       ██      ██   ██    ██  ██        ██    ▀█  ██ ▄█   
██     ███▄    ▄ ██      ██   ██   ▄██  ██        ██    ▄█   ███    
█▀█████▀ █████▀▄████▄  ▄████▄ ██████▀   ▀████   ▄████████    ▄█     
                              ██                           ▄█       
                            ▄████▄                       ██▀        

            ▄▄                           ▄▄                                            
▀███▀▀▀██▄▀███                         ▀███           ▀████▀  ▀████▀▀                  
  ██    ██  ██                           ██             ██      ██                     
  ██    ██  ██   ▄██▀██▄  ▄██▀██▄   ▄█▀▀███ ▀██▀   ▀██▀ ██      ██   ▄█▀██▄ ▀██▀   ▀██▀
  ██▀▀▀█▄▄  ██  ██▀   ▀████▀   ▀██▄██    ██   ██   ▄█   ██████████  ██   ██   ▀██ ▄█▀  
  ██    ▀█  ██  ██     ████     █████    ██    ██ ▄█    ██      ██   ▄█████     ███    
  ██    ▄█  ██  ██▄   ▄████▄   ▄██▀██    ██     ███     ██      ██  ██   ██   ▄█▀ ██▄  
▄████████ ▄████▄ ▀█████▀  ▀█████▀  ▀████▀███▄   ▄█    ▄████▄  ▄████▄▄████▀██▄██▄   ▄██▄
                                              ▄█                                       
                                            ██▀                                        

]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Slap Battles | Eternal Bob", "BloodTheme")

local General = Window:NewTab("BossFight")
local General1 = General:NewSection("Script created by BloodyHax \(@TheBloodyHax\)")

General1:NewToggle("Anti Shockwave", "Creates a part that's above the shockwave", function(state)
    if state then
        local plr = game:GetService("Players").LocalPlayer
        local char = plr.Character
        local myPart = Instance.new("Part")

        myPart.Transparency = 0.5
        myPart.Anchored = true
        myPart.Size = Vector3.new(293, 2, 115)
        myPart.Parent = game.Workspace
        myPart.CFrame = CFrame.new(5.30912781, 0.5, -43.4305878, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        myPart.Rotation = Vector3.new(0,0,0)
        myPart.Name = 'Antishock'
    else
        game.Workspace.Antishock:Destroy()
    end
end)

General1:NewToggle("Anti Void", "Creates a giant part that covers the Void", function(state)
    if state then
        local plr = game:GetService("Players").LocalPlayer
        local char = plr.Character
        local myPart = Instance.new("Part")

        myPart.Transparency = 0.5
        myPart.Anchored = true
        myPart.Size = Vector3.new(458, 4, 256)
        myPart.Parent = game.Workspace
        myPart.CFrame = CFrame.new(-0.651832581, -3.5, -39.9848366, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        myPart.Rotation = Vector3.new(0,0,0)
        myPart.Name = 'AntiVoid'
    else
        game.Workspace.AntiVoid:Destroy()
    end
end)

General1:NewButton("Auto Tycoon", "Automatically Clicks Tycoon", function()
_G.AutoTycoon = true
while _G.AutoTycoon do
    for i,v in pairs(workspace:GetDescendants()) do
        if v.Name == "Click" and v:FindFirstChild("ClickDetector") then
            fireclickdetector(v.ClickDetector)
        end
    end
    task.wait()
end
end)

General1:NewButton("Panic", "Teleport to Safezone", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.95300472, 133.499954, -34.945755, 1, 6.71154154e-08, 1.78947937e-06, -6.71153018e-08, 1, -6.41212097e-08, -1.78947937e-06, 6.41210889e-08, 1)
end)

General1:NewButton("Auto hit bob", "Automatically Hits BOB whenever he is attackable", function()
while task.wait(0.1) do
local Event = game:GetService("Workspace").bobBoss.DamageEvent Event:FireServer()
end
end)

General1:NewButton("Reach Glove", "Enlarges your glove's hitbox", function()
local plr = game.Players.LocalPlayer
function supaSiza(v)
   if v:IsA("Tool") then
       v.Glove.Transparency = 0.75
       v.Glove.Size = Vector3.new(25, 25, 25)
   end
end
plr.Character.ChildAdded:Connect(supaSiza)
plr.CharacterAdded:Connect(function(char)
   char.ChildAdded:Connect(supaSiza)
end)
end)

General1:NewSlider("Reach Size", "Glove size Slider", 100, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    local plr = game.Players.LocalPlayer
    function supaSiza(v)
      if v:IsA("Tool") then
         v.Glove.Transparency = 0.75
         v.Glove.Size = Vector3.new(s, s, s)
     end
    end
    plr.Character.ChildAdded:Connect(supaSiza)
    plr.CharacterAdded:Connect(function(char)
      char.ChildAdded:Connect(supaSiza)
    end)
end)

General1:NewButton("Anti Ragdoll", "Self Explanatory", function()
deb = false
plr = game.Players.LocalPlayer
if deb == false then
while true do
plr.Character.Torso:WaitForChild("Ragdollballsocket")
plr.Character.Torso.Anchored = true
deb = true
wait(1)
deb = false
plr.Character.Torso.Anchored = false
task.wait()
end
end
end)

General1:NewButton("Remove ShakeScreen", "Self Explanatory", function()
game:GetService("Players").LocalPlayer.PlayerScripts.Screenshake:Destroy()
end)

local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local myPart = Instance.new("Part")

myPart.Transparency = 0.5
myPart.Anchored = true
myPart.Size = Vector3.new(7, 1, 7)
myPart.Parent = game.Workspace
myPart.CFrame = CFrame.new(-1.88807678, 130, -34.8916245, 1, 0, 0, 0, 1, 0, 0, 0, 1)
myPart.Rotation = Vector3.new(0,0,0)
myPart.Name = 'Safezone'
