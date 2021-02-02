-- require('keyboard') -- Load Hammerspoon bits from https://github.com/jasonrudolph/keyboard
local wm = require('window-management')
local hyper = require('hyper')
hyper.install('F19')
hyper.bindKey('r', hs.reload)


hyper.bindKey("Left", function()
  wm.moveWindowToPosition(wm.screenPositions.left)
end)

hyper.bindKey("Right", function()
  wm.moveWindowToPosition(wm.screenPositions.right)
end)

hyper.bindKey("Up", function()
  wm.moveWindowToPosition(wm.screenPositions.top)
end)

hyper.bindKey("Down", function()
  wm.moveWindowToPosition(wm.screenPositions.bottom)
end)

hyper.bindKey("f", function()
  wm.windowMaximize(0)
end)

hyper.bindKey("1", function()
  wm.moveWindowToPosition(wm.screenPositions.topLeft)
end)

hyper.bindKey("2", function()
  wm.moveWindowToPosition(wm.screenPositions.topRight)
end)

hyper.bindKey("3", function()
  wm.moveWindowToPosition(wm.screenPositions.bottomRight)
end)

hyper.bindKey("4", function()
  wm.moveWindowToPosition(wm.screenPositions.bottomLeft)
end)

hyper.bindKey("c", function()
  hs.window.focusedWindow():centerOnScreen(nil, true)
end)

hs.window.highlight.start()
hs.window.highlight.ui.overlayColor={0.2,0.05,0,0.50}
hyper.bindKey("i", function()
  hs.window.highlight.toggleIsolate()
end)

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
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
myWatcher2 = hs.pathwatcher.new(os.getenv("HOME") .. "/dotfiles/init.lua", reloadConfig):start()
hs.alert.show("Config loaded")
