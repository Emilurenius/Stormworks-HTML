commandTable = {}
commands = {}
data = "drawType=line, startX=5, startY=5, endX=20, endY=20\ndrawType=line, startX=10, startY=10, endX=20, endY=20"

i = 1
for command in data:gmatch("([^\n]*)\n?") do
    commands = {}
    for k, v in string.gmatch(command, "(%w+)=(%w+)") do
        if k == "drawType" then
            commands[1] = v
        elseif k == "startX" then
            commands[2] = v
        elseif k == "startY" then
            commands[3] = v
        elseif k == "endX" then
            commands[4] = v
        elseif k == "endY" then
            commands[5] = v
        end
    end
    commandTable[i] = commands
    i = i+1
end

for k, v in  pairs(commandTable) do
    for k, v in pairs(v) do
        print(v)
    end
end