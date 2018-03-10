class EmailController < ApplicationController
    def index
    end
    
    def send_mail
        EmailMailer.send_email.deliver_now!
        
    end
    
    
end
