commandTable = {}
commands = {}
data = "mode=line, startX=5, startY=5, endX=20, endY=20\nmode=line, startX=10, startY=10, endX=20, endY=20"

i = 1
for command in data:gmatch("([^\n]*)\n?") do
    commands = {}
    for k, v in string.gmatch(command, "(%w+)=(%w+)") do
        commands[k] = v
        print(k, v)
    end
    commandTable[i] = commands
    i = i+1
end
print("\n")

print(commandTable[1]["startX"])

-- for k, v in  pairs(commandTable) do
--     for k, v in pairs(v) do
--         print("\n")
--         print(v)
--     end
-- end