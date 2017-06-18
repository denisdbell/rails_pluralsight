require 'logger'  
require 'fileutils'


@log = Logger.new('application.log', 0, 100 * 1024 * 1024)  


@json_log_file = 'public/application.json'


def log(log_details)

    puts log_details

    @log.debug(log_details);
end

def create_json_log_file 

     log "Creating #{@json_log_file} file"
     
     FileUtils.touch("#{@json_log_file}")

end


def update_json_log_file(text)

    File.open(@json_log_file, 'w') { |file| file.write(text) }
    
end



