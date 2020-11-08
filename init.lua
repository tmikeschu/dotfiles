-- require('keyboard') -- Load Hammerspoon bits from https://github.com/jasonrudolph/keyboard

function makeMax()
  win = hs.window.focusedWindow()
  f = win:frame()
  screen = win:screen()
  return screen:frame()
end

function setFrame(x, y, w, h)
  f.x = x
  f.y = y
  f.w = w
  f.h = h
  win:setFrame(f)
end

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
  max = makeMax()
  setFrame(max.x, max.y, max.w / 2, max.h)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
  win = hs.window.focusedWindow()
  f = win:frame()
  screen = win:screen()
  max = screen:frame()
  setFrame(max.x + max.w / 2, max.y, max.w / 2, max.h)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
  win = hs.window.focusedWindow()
  f = win:frame()
  screen = win:screen()
  max = screen:frame()
  setFrame(max.x, max.y, max.w, max.h / 2)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
  win = hs.window.focusedWindow()
  f = win:frame()
  screen = win:screen()
  max = screen:frame()
  setFrame(max.x, max.y + max.h / 2, max.w, max.h / 2)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "F", function()
  win = hs.window.focusedWindow()
  f = win:frame()
  screen = win:screen()
  max = screen:frame()
  setFrame(max.x, max.y, max.w, max.h)
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
