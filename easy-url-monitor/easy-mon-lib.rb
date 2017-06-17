=begin
    
    -- Denis Bell -- <denisdbell@gmail.com> Emelius Enterprizes

    This is the core libray which is used by the monitoring program
 
=end

require 'fileutils'
require 'net/http'
require 'json'
require 'securerandom'
require "./configuration"
require "./emailer"

#Starts the monitoring process
def start_monitoring

    #Read configuration
    config = read_configuration_file

    while true
        
        for url in config['config']['urls']

            new_url = URI.parse(url['value'] + "?#{SecureRandom.uuid}" ) #Add UUID to prevent caching

            puts "#{url['value']}?#{SecureRandom.uuid}"

            request = Net::HTTP::Get.new(new_url.to_s)

            response = Net::HTTP.start(new_url.host, new_url.port) {|http|
                http.request(request)
            }
            
           send_email
           
           puts "responded with a status of #{  response.code } "
        
        end

    end
end


#Validates input form the command line
def command_line_input_validation(command)

    if not ['start', 'init'].include? command 

        puts         "

                          INVALID COMMAND LINE ARGUMENT!!!!!! 

                          <-- #{ command } --> is not a recognized command. The list of accepted command are below:
                          
                          init - Creates the config.json file with default vaulues:

                          start- Starts the monitoring of the URLS 

                    "
        return

    end 

end




