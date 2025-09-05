-- Edit these variables to change your timings, intervals are in milliseconds:

-- Wait to start jumping:
initialWait = 667

-- Jumps 1 to 20:
numberOfJumps1 = 18
interval1 = 469

-- Jumps 21 to 50:
numberOfJumps2 = 30
interval2 = 333

-- Jumps 51 to 100:
numberOfJumps3 = 50
interval3 = 259

-- Jumps 101 to 200:
numberOfJumps4 = 100
interval4 = 230

-- Jumps 201 to 300 (double jump section):
numberOfJumps5 = 50
interval5_1 = 190
interval5_2 = 170

-- Jumps 301 to 1000:
numberOfJumps6 = 701
interval6 = 196

-- No need to edit below this line

hs.hotkey.bind({"ctrl"}, "S", function()
    pressEnter()
    wait(initialWait)
    jumpRope(numberOfJumps1, interval1)
    jumpRope(numberOfJumps2, interval2)
    jumpRope(numberOfJumps3, interval3)
    jumpRope(numberOfJumps4, interval4)
    doubleJump(numberOfJumps5, interval5_1, interval5_2)
    jumpRope(numberOfJumps6, interval6)
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
