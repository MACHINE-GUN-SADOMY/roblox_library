-- LIBRERIA RAYFIELD
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/MACHINE-GUN-SADOMY/roblox_library/main/source.lua'))()

local version_script = '1.0',

-- VENTANA PRINCIPAL 
local Window = Rayfield:CreateWindow({
   Name = "⬜ White Power Script ✋",
   LoadingTitle = " Ultimate Nigger Molestation " .. version_script,
   LoadingSubtitle = "Creator by totencopf🤚🏻", -- ARREGLAR UNICODE
   ConfigurationSaving = {
      Enabled = false,
      FolderName = 0, -- Sin carpeta
      FileName = 0 -- sin valor
   },
   Discord = {
      Enabled = false,
      Invite = "", --  Sin invitacion.
      RememberJoins = false
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "",
      Subtitle = "",
      Note = "We dont use Key's",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {""} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
    Title = "   Inyeccion Completa de Script",
    Content = "  Version Cargada: " .. version_script,
    Duration = 2.0,
    Image = "",
    Actions = { -- Notification Buttons
       Ignore = {
          Name = " Ok - ", -- >>
          Callback = function()
          print("The user tapped 'Ok'")
       end
    },
 },
 })

local Tab = Window:CreateTab("☠️ Main Options ☠️", "") -- Title, Image
-- Slide Jump

local Slider = Tab:CreateSlider({
    Name = "Jump Height",
    Range = {0, 100},
    Increment = 10,
    Suffix = "Height Modicator",
    CurrentValue = 50,
    Flag = "SliderJheight",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
    end,
 })

 -- Slide Walk
local Slider = Tab:CreateSlider({
    Name = "Walk Speed",
    Range = {0, 100},
    Increment = 10,
    Suffix = "Speed",
    CurrentValue = 50,
    Flag = "SliderWspeed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
    end,
 })

-- noclip
 local Toggle = Tab:CreateToggle({
    Name = "Noclip",
    CurrentValue = false,
    Flag = "NoclipToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        local function NoclipLoop()
            if Clip == false and speaker.Character ~= nil then
                for _, child in pairs(speaker.Character:GetDescendants()) do
                    if child:IsA('BasePart') and child.CanCollide == true and child.Name ~= floatName then
                        child.CanCollide = false
                    end
                end
            end
        end
        Noclipping = RunService.Stepped:Connect(NoclipLoop)
    end,
 })