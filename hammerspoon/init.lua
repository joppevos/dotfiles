--- start quick open applications
function open_app(name)
    return function()
        hs.application.launchOrFocus(name)
        if name == 'Finder' then
            hs.appfinder.appFromName(name):activate()
        end
        local win = hs.window.focusedWindow()
        -- win:maximize()
    end
end


local alpha = {'cmd', 'ctrl'}
-- alphaKey:bind('m'):toApplication('/System/Applications/Mail.app')

--- quick open applications
--


hs.hotkey.bind(alpha, "9", open_app("iTerm"))
hs.hotkey.bind(alpha, "0", open_app("Google Chrome"))
hs.hotkey.bind(alpha, "i", open_app("Microsoft Teams"))
hs.hotkey.bind(alpha, "p", open_app("Pycharm"))

hs.hotkey.bind(alpha, "n", open_app("Calendar"))
hs.hotkey.bind(alpha, "l", open_app("Mail"))
