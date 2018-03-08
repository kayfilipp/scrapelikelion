class EmailMailer < ApplicationMailer
    
    def send_email
        
        mail(to:"matthewji12345@g.ucla.edu", from:"gdoubledagger@likelion.org", subject:"Dining Hall Menu")
        
        
        
        
    end
    
    
    
    
end
