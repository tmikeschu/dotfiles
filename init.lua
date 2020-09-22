require('keyboard') -- Load Hammerspoon bits from https://github.com/jasonrudolph/keyboard

function verticalHalf(x)
  win = hs.window.focusedWindow()
  f = win:frame()
  screen = win:screen()
  max = screen:frame()

  f.x = max.x + x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end

function horizontalHalf(y)
  win = hs.window.focusedWindow()
  f = win:frame()
  screen = win:screen()
  max = screen:frame()

  f.x = max.x
  f.y = max.y + y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
  verticalHalf(0)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
  max = screen:frame()
  verticalHalf(max.w / 2)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
  horizontalHalf(0)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
  max = screen:frame()
  horizontalHalf(max.h / 2)
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
hs.alert.show("Config loaded")
