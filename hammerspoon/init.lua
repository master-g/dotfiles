hs.hotkey.bind({"ctrl"}, "`", function()
        local app = hs.application.get('kitty')
        if app ~= nil and app:isFrontmost() then
                app:hide()
        else
                hs.application.launchOrFocus("/Applications/kitty.app")
        end
end)
