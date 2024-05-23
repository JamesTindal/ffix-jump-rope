hs.hotkey.bind({ "cmd", "alt", "ctrl" }, "W", function()
    pressEnter()
    wait(667)
    jumpRope(18, 469)
    jumpRope(30, 333)
    jumpRope(50, 259)
    jumpRope(100, 230)
    doubleJump(50, 190, 170)
    jumpRope(701, 196)
end)

function jumpRope(jumps, interval)
    for i = 1, jumps do
        pressEnter()
        wait(interval)
    end
end

function doubleJump(jumps, interval1, interval2)
    for i = 1, jumps do
        pressEnter()
        wait(interval1)
        pressEnter()
        wait(interval2)
    end
end

function pressEnter()
    hs.eventtap.keyStroke({}, "return")
end

function wait(milliseconds)
    hs.timer.usleep(milliseconds * 1000)
end
