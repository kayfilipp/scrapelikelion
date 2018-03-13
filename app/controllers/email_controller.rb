class WelcomeController < ApplicationController
    def index
    end
    
    def send_mail
        @mailAddress = params[:email]
        new_user_email.notify_user(@mailAddress).deliver
    end
    
    
end
