--- start quick open applications 
function open_app(name)
    return function()
        hs.application.launchOrFocus(name)
        if name == 'Finder' then
            hs.appfinder.appFromName(name):activate()
        end
        local win = hs.window.focusedWindow()
        win:maximize()
    end
end

--- quick open applications
hs.hotkey.bind({"command", "shift"}, "1", open_app("iTerm"))
hs.hotkey.bind({"command", "shift"}, "2", open_app("Google Chrome"))
hs.hotkey.bind({"command", "shift"}, "i", open_app("Microsoft Teams"))
hs.hotkey.bind({"command", "shift"}, "p", open_app("Pycharm"))

hs.hotkey.bind({"command", "shift"}, "7", open_app("Calendar"))
hs.hotkey.bind({"command", "shift"}, "8", open_app("Mail"))
