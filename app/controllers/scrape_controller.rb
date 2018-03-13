class ScrapeController < ApplicationController
    
    def index
       require 'open-uri'
       require 'nokogiri'
       
       
       
       @doc = Nokogiri::HTML(open('http://menu.dining.ucla.edu/Menus'))
       @foods = @doc.css('a.recipelink')
       @headers = @doc.css("div.menu-block")
       @firstTitle = @headers[0].css("h3.col-header").text
       @counter = 0
    #   puts @headers
    end
    
    def sendMail
        @mailAddress = params[:email]
        puts @mailAddress
       NewUserEmail.notify_user(@mailAddress).deliver 
    end
end
