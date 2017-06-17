require 'fileutils'
require 'net/http'
require "json"

config_filename = 'config.json'
command = ARGV[0]
name = ARGV[1]

#Initialization

if command == "init"

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


#Read configuration
config_file = File.open(config_filename)

config = JSON.parse(config_file.read)

#Url parsing

for url in config['config']['urls']
    
    url = URI.parse(url['value'])
        req = Net::HTTP::Get.new(url.to_s)
        res = Net::HTTP.start(url.host, url.port) {|http|
             http.request(req)
        }

end

puts config['config']['urls'][0]['value']  + "responded with a status of" + res.to_s 




