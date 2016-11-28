---------------------
-- Pomodoro Timer  --
---------------------

-- Cancel Scheduled Notification
function cancelTimer(silent)
    if timer and timer:running() then
        timer:stop()
        if not silent then
            hs.alert(" Pomodoro Canceled ")
        end
    else
        if not silent then
            hs.alert(" No Pomodoro Running ")
        end
    end
end

-- Schedule Notification
function startTimer(work)
    cancelTimer(true)

    if work then
        timer = hs.timer.doAfter(25 * 60, function()
            hs.alert(" Pomodoro Complete ", 4)
            hs.notify.new({
                title="Pomodoro Complete",
                informativeText="Did you complete your One Thing?"
            }):send()
        end)
        hs.alert(" Pomodoro Timer Started ", 2)
    else
        timer = hs.timer.doAfter(5 * 60, function()
            hs.alert(" Break Over ", 4)
            hs.notify.new({
                title="Pomodoro Break Over",
                informativeText="Did you stretch? Look away? Enjoy your rest?"
            }):send()
        end)
        hs.alert(" Break Started ", 2)
    end
end

-- Simple Callbacks
function startWork() startTimer(true) end
function startBreak() startTimer(false) end

hs.hotkey.bind({"cmd", "ctrl"}, "P", startWork)
hs.hotkey.bind({"cmd", "ctrl", "shift"}, "P", startBreak)
hs.hotkey.bind({"cmd", "ctrl", "alt"}, "P", cancelTimer)
