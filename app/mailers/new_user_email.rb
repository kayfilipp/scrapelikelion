class NewUserEmail < ApplicationMailer
    def notify_user(email)
        
        mail(to: "kayfilipp@gmail.com", subject: "Thank you for signing up!" )
        
    end
end
