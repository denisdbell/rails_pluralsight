=begin
    
    -- Denis Bell -- <denisdbell@gmail.com> Emelius Enterprizes

     Functions related to manipulation of the config.json file can be found here

=end
require 'fileutils'

@config_filename='config.json'

#Reads and parses json configuraton file
def read_configuration_file
    #Read configuration
    config_file = File.open(@config_filename)

    config = JSON.parse(config_file.read)
end

#Creates the default configuration file
def create_configuration_file 

     puts "Creating configuration file " + @config_filename
     
     FileUtils.touch(@config_filename)

     #Load default configuration for config.json
     File.open(@config_filename, "w") do |f|
        f.write '{
                    "config": { 

                                "monitorDelayInSeconds":10,
                                "smtp":{
                                    "smtpServer":"smtp.gmail.com", 
                                    "smtpPort":587,
                                    "sslRequired":true,
                                    "username":"username@gmail.com",
                                    "password":"password@gmail.com"
                                },
                                "emailAddresses":[

                                    {
                                        "value":"user@gmail.com"
                                    }
                                ],
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

     puts "Default configuration <--- #{@config_filename} --->  has been created. Modify it to suit your needs "
end