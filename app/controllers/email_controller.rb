class WelcomeController < ApplicationController
    def index
    end
    
    def send_mail
        WelcomeMailer.send_email.deliver_now!
        
    end
    
    
end
