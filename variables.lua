first_arg = arg[1]
second_arg = arg[2]
third_arg = arg[3]
fourth_arg = arg[4]
fifth_arg = arg[5]

if first_arg == nil then
    command = "./resa.sh"
    os.execute(command)
elseif second_arg == nil then
    var_command = string.format("./variables.sh %s", first_arg)
    resa_command = string.format("./resa.sh %s", first_arg)
    os.execute(var_command)
    os.execute(resa_command)
elseif third_arg == nil then
    var_command = string.format("./variables.sh %s %s", first_arg, second_arg)
    resa_command = string.format("./resa.sh %s %s", first_arg, second_arg)
    os.execute(var_command)
    os.execute(resa_command)
elseif fourth_arg == nil then
    var_command = string.format("./variables.sh %s %s %s", first_arg, second_arg, third_arg)
    resa_command = string.format("./resa.sh %s %s %s", first_arg, second_arg, third_arg)
    os.execute(var_command)
    os.execute(resa_command)
elseif fifth_arg == nil then
    var_command = string.format("./variables.sh %s %s %s %s", first_arg, second_arg, third_arg)
    resa_command = string.format("./resa.sh %s %s %s %s", first_arg, second_arg, third_arg, fourth_arg)
    os.execute(var_command)
    os.execute(resa_command)
else
    print("lua if went wrong")
end
