------------------------
--  Hammerspoon Init  --
------------------------

-- Global Variables - Do Not Edit Here. Edit local.lua to override.
-- editor = "Atom"
gutter = 20
movement = 20
sizingKeys = {"cmd", "ctrl"}
movementKeys = {"cmd", "ctrl", "option"}
displayKeys = {"cmd", "ctrl", "shift"}

-- Imports

--- This is a hack to avoid crashing if a module doesn't exist
local function requiref(module)
    require(module)
end

pcall(requiref,"local")

require "normal"
require "pomodoro"

------------------------
-- Config Management  --
------------------------

-- Config Reload
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config Reloaded")
