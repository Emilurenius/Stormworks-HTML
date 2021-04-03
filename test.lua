commandTable = {}
commands = {}
data = "mode=line, startX=10, startY=10, endX=20, endY=20\nmode=timerWait, value=5"

i = 1
for command in data:gmatch("([^\n]*)\n?") do
    commands = {}
    for k, v in string.gmatch(command, "(%w+)=(%w+)") do
        commands[k] = v
        print(k, v)
    end
    print("\n")
    commandTable[i] = commands
    i = i+1
end
print("\n")

for k, v in pairs(commandTable) do
    if v["mode"] == "timerWait" then
        timerWait = tonumber(v["value"])
    end
end
