=begin
    
    -- Denis Bell -- <denisdbell@gmail.com> Emelius Enterprizes

    This is the main ruby script which handles input from the command line
    
    The "init" command creates the json configuration file which can then be customized
    
    The "start" command initiates the url monitoriing process
=end

require "./easy-mon-lib"


command = ARGV[0]
name = ARGV[1]

command_line_input_validation(command)

if command == "init"
    create_configuration_file 
end
  
if command == "monitor"
   start_monitoring
end



