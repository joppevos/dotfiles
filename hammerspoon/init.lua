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
--
hs.hotkey.bind({"option", "space"}, "9", open_app("iTerm"))
hs.hotkey.bind({"option", "space"}, "8", open_app("Google Chrome"))
hs.hotkey.bind({"option", "space"}, "t", open_app("Microsoft Teams"))
hs.hotkey.bind({"option", "space"}, "p", open_app("Pycharm"))

hs.hotkey.bind({"option", "space"}, "n", open_app("Calendar"))
hs.hotkey.bind({"option", "space"}, "l", open_app("Mail"))
