print("Made by devs of Elektro Do not claim As yours or just promote it would help a lot thanks !")
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
   Name = "Elektrical hub ",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Elektrical Hub",
   LoadingSubtitle = "by Elektric team",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "T", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Elektrical Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
          Title = "Elektrical Key",
      Subtitle = "Key System",
      Note = "dm the owner or check google Docs !!!", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Murder Mystery Z"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Credits", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Developers")

Rayfield:Notify({
   Title = "you executed the script successfully",
   Content = "have fun :)",
   Duration = 6.5,
   Image = nil,
})

local Button = MainTab:CreateButton({
   Name = "Elektro",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
local Button = MainTab:CreateButton({
   Name = "GarfieldKing45",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("Dedicated Scripts", nil) -- Title, Image
local Section = Tab:CreateSection("the best of the best")

local Button = Tab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Ink game (supported) RINGA ",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/z0NzdtZC"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Zephyr MVSD  ",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/TheRealAvrwm/Zephyr-V2/refs/heads/main/ZephyrV2", true))()
   end,
})
local Button = Tab:CreateButton({
   Name = "YARHM",
   Callback = function()
   loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-YARHM-12403"))()
   end,
})
local Button = Tab:CreateButton({
   Name = "Solaris Arsenal",
   Callback = function()
   loadstring(game:HttpGet("https://rawscripts.net/raw/Counter-Blox-Solaris-14633"))()
   end,
})

local Tab = Window:CreateTab("Special thanks", nil) -- Title, Image
local Section = Tab:CreateSection("Special People")

local Button = Tab:CreateButton({
   Name = "PlayFede",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "Tato",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "Leo",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "Red gaming",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "bacon Nova",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "Lukas (mm2giftgivermm2)",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "Beyrem (Beyremong)",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})
local Button = Tab:CreateButton({
   Name = "KA_NO (KORDIAN)",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("ELEKTRIC", nil) -- Title, Image
local Section = Tab:CreateSection("Universal script")

local Button = Tab:CreateButton({
   Name = "SS_LOBSTER (THE GOAT)",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Section = Tab:CreateSection("Aimbot")

local Button = Tab:CreateButton({
   Name = "Aimbot ( in the works )",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

