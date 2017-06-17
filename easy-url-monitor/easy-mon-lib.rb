=begin
    
    -- Denis Bell -- <denisdbell@gmail.com> Emelius Enterprizes

    This is the core libray which is used by the monitoring program
 
=end

require 'fileutils'
require 'net/http'
require 'json'


#Creates the default configuration file
def create_config(config_filename)
    
     puts "Creating " + config_filename + " file"
    
     FileUtils.touch(config_filename)

     #Load default configuration for config.json
     File.open(config_filename, "w") do |f|
        f.write '{
                    "config": { 
                                "email":{
                                    "smtpServer":"smtp.gmail.com", 
                                    "smtpPort":465,
                                    "sslRequired":true,
                                    "username":"username@gmail.com",
                                    "password":"password@gmail.com"
                                },
                                "urls":[
                                    {
                                      "value":"http://www.google.com"
                                    },
                                    {
                                      "value":"http://www.facebook.com"
                                    },
                                    {
                                      "value":"http://www.twitter.com"
                                    }

                                ]

                            }
                 }'
     end

end


#Starts the monitoring process
def start_monitoring(config_filename)

    #Read configuration
    config_file = File.open(config_filename)

    config = JSON.parse(config_file.read)

    #Url parsing


    while true
        
        for url in config['config']['urls']
            
            puts url['value']

            url = URI.parse(url['value'])

            request = Net::HTTP::Get.new(url.to_s)

            response = Net::HTTP.start(url.host, url.port) {|http|
                http.request(request)
            }
            
            puts config['config']['urls'][0]['value']  + "responded with a status of" + response.to_s 
        end

    end
end


#Validates input form the command line
def command_line_input_validation(command)

    if not ['start', 'init'].include? command 

        puts         "

                          INVALID COMMAND LINE ARGUMENT!!!!!!  

                          <" + command  +"> is not a recognized command. The list of accepted command are below:
                          
                          init - Creates the config.json file with default vaulues:

                          start- Starts the monitoring of the URLS 



                        "
        return
        
    end 

end



