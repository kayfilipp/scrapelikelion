class ScrapeController < ApplicationController
    
    def index
       require 'open-uri'
       require 'nokogiri'
       
       @doc = Nokogiri::HTML(open('http://menu.dining.ucla.edu/Menus'))
       @foods = @doc.css('a.recipelink')
       @headers = @doc.css("div.menu-block")
       puts @headers
    end
end
