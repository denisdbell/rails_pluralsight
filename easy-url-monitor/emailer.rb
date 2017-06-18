require 'mail'
require "./configuration"

message = <<MESSAGE_END
From: Private Person <me@fromdomain.com>
To: A Test User <test@todomain.com>
Subject: SMTP e-mail test

This is a test e-mail message.
MESSAGE_END


def send_email

        config = read_configuration_file

        smtpServer = config['config']['smtp']['smtpServer'] 
        smtpPort = config['config']['smtp']['smtpPort'] 
        username = config['config']['smtp']['username'] 
        password = config['config']['smtp']['password'] 


        options = { :address              => smtpServer,
                    :port                 => smtpPort,
                    :user_name            =>  username,
                    :password             =>  password,
                    :authentication       => 'plain',
                    :enable_starttls_auto => true  }



        Mail.defaults do
             delivery_method :smtp, options
        end

        Mail.deliver do
            to 'denisdbell@gmail.com'
            from 'denisdbell@gmail.com'
            subject 'testing sendmail'
            body 'testing sendmail'
        end
end


