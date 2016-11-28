---------------------
--  Non-Modal Init --
---------------------

-- Global Variables come from init.lua

---------------------
--  Window Sizing  --
---------------------

-- Maximized
hs.hotkey.bind(sizingKeys, "M", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local max = win:screen():frame()

    f.x = max.x + gutter
    f.y = max.y + gutter
    f.w = max.w - (gutter * 2)
    f.h = max.h - (gutter * 2)
    win:setFrame(f)
end)

-- Left Half
hs.hotkey.bind(sizingKeys, "H", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + gutter
    f.y = max.y + gutter
    f.w = (max.w / 2) - (gutter * 1.5)
    f.h = max.h - (gutter * 2)
    win:setFrame(f)
end)

-- Right Half
hs.hotkey.bind(sizingKeys, "L", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2) + (gutter / 2)
    f.y = max.y + gutter
    f.w = (max.w / 2) - (gutter * 1.5)
    f.h = max.h - (gutter * 2)
    win:setFrame(f)
end)

-- Top Half
hs.hotkey.bind(sizingKeys, "K", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + gutter
    f.y = max.y + gutter
    f.w = max.w - (gutter * 2)
    f.h = (max.h / 2) - (gutter * 1.5)
    win:setFrame(f)
end)

-- Bottom Half
hs.hotkey.bind(sizingKeys, "J", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + gutter
    f.y = (max.h / 2) + (gutter * 2)
    f.w = max.w - (gutter * 2)
    f.h = (max.h / 2) - (gutter * 1.5)
    win:setFrame(f)
end)

-- Top Left Quarter
hs.hotkey.bind(sizingKeys, "Y", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + gutter
    f.y = max.y + gutter
    f.w = (max.w / 2) - (gutter * 1.5)
    f.h = (max.h / 2) - (gutter * 1.5)
    win:setFrame(f)
end)

-- Top Right Quarter
hs.hotkey.bind(sizingKeys, "U", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = (max.w / 2) + (gutter / 2)
    f.y = max.y + gutter
    f.w = (max.w / 2) - (gutter * 1.5)
    f.h = (max.h / 2) - (gutter * 1.5)
    win:setFrame(f)
end)

-- Bottom Left Quarter
hs.hotkey.bind(sizingKeys, "B", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + gutter
    f.y = (max.h / 2) + (gutter / 2)
    f.w = (max.w / 2) - (gutter * 1.5)
    f.h = (max.h / 2) - (gutter * 1.5)
    win:setFrame(f)
end)

-- Bottom Right Quarter
hs.hotkey.bind(sizingKeys, "N", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = (max.w / 2) + (gutter / 2)
    f.y = (max.h / 2) + (gutter / 2)
    f.w = (max.w / 2) - (gutter * 1.5)
    f.h = (max.h / 2) - (gutter * 1.5)
    win:setFrame(f)
end)

-- Right Third
hs.hotkey.bind(sizingKeys, ".", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.w - (max.w / 1.6)
    f.y = max.y + gutter
    f.w = (max.w / 1.6) - gutter
    f.h = max.h - (gutter * 1.5)
    win:setFrame(f)
end)

-- Left Third
hs.hotkey.bind(sizingKeys, ",", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + gutter
    f.y = max.y + gutter
    f.w = (max.w / 1.6) - gutter
    f.h = max.h - (gutter * 1.5)
    win:setFrame(f)
end)

-- Middle
hs.hotkey.bind(sizingKeys, "/", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.w * 0.2
    f.y = max.h * 0.2
    f.w = max.w * 0.6
    f.h = max.h * 0.6
    win:setFrame(f)
end)

-----------------------
--  Window Movement  --
-----------------------

-- Move Up and Left
hs.hotkey.bind(movementKeys, "Y", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - movement
  f.y = f.y - movement
  win:setFrame(f)
end)

-- Move Up
hs.hotkey.bind(movementKeys, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y - movement
  win:setFrame(f)
end)

-- Move Up and Right
hs.hotkey.bind(movementKeys, "U", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + movement
  f.y = f.y - movement
  win:setFrame(f)
end)

-- Move Left
hs.hotkey.bind(movementKeys, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - movement
  win:setFrame(f)
end)

-- Move Right
hs.hotkey.bind(movementKeys, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + movement
  win:setFrame(f)
end)

-- Move Down and Left
hs.hotkey.bind(movementKeys, "B", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - movement
  f.y = f.y + movement
  win:setFrame(f)
end)

-- Move Down
hs.hotkey.bind(movementKeys, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y + movement
  win:setFrame(f)
end)

-- Move Down and Right
hs.hotkey.bind(movementKeys, "N", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + movement
  f.y = f.y + movement
  win:setFrame(f)
end)

-------------------------
-- Display Management  --
-------------------------

-- Move Window to West Display
hs.hotkey.bind(displayKeys, "H", function()
  local win = hs.window.focusedWindow()

  win:moveOneScreenWest()
end)

-- Move Window to East Display
hs.hotkey.bind(displayKeys, "L", function()
  local win = hs.window.focusedWindow()

  win:moveOneScreenEast()
end)

-- Move Window to North Display
hs.hotkey.bind(displayKeys, "K", function()
  local win = hs.window.focusedWindow()

  win:moveOneScreenNorth()
end)

-- Move Window to South Display
hs.hotkey.bind(displayKeys, "J", function()
  local win = hs.window.focusedWindow()

  win:moveOneScreenSouth()
end)

--------------------------------
--  Here be some nonsense...  --
--------------------------------

-- Find The Cursor
local mouseCircle = nil
local mouseCircleTimer = nil

function mouseHighlight()
    -- Delete an existing highlight if it exists
    if mouseCircle then
        mouseCircle:delete()
        if mouseCircleTimer then
            mouseCircleTimer:stop()
        end
    end
    -- Get the current co-ordinates of the mouse pointer
    mousepoint = hs.mouse.get()
    -- Prepare a big red circle around the mouse pointer
    mouseCircle = hs.drawing.circle(hs.geometry.rect(mousepoint.x-50, mousepoint.y-50, 100, 100))
    mouseCircle:setStrokeColor({["red"]=0.85,["blue"]=0.2,["green"]=0.1,["alpha"]=0.9})
    mouseCircle:setFill(false)
    mouseCircle:setStrokeWidth(8)
    mouseCircle:show()

    -- Set a timer to delete the circle after 3 seconds
    mouseCircleTimer = hs.timer.doAfter(3, function() mouseCircle:delete() end)
end
hs.hotkey.bind({"cmd","alt","shift"}, "D", mouseHighlight)
