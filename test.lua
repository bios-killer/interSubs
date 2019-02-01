mp.osd_message("--> test.lua..")


function capture_handler()
    mp.osd_message("--> capture_handler..")
end
function capture_crop()
    mp.osd_message("--> capture_crop..")
end

local PauseIndicatorWrapper
PauseIndicatorWrapper = function(event, paused)
    mp.osd_message("--> pause..")
end

mp.observe_property('pause', 'bool', PauseIndicatorWrapper)



local initDraw
initDraw = function()
    mp.osd_message("--> playback-restart..")
end

mp.register_event('playback-restart', initDraw)



mp.add_key_binding("d", "capture", capture_handler)
mp.set_key_bindings({
    {"c", capture_crop},
    {"a", capture_handler}
})
mp.enable_key_bindings()