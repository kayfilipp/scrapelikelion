class ScrapeController < ApplicationController
    
    def index
       require 'open-uri'
       require 'nokogiri'
       
       @doc = Nokogiri::HTML(open('http://menu.dining.ucla.edu/Menus/Lunch'))
       @foods = @doc.css('a.recipelink')
       puts @doc
       puts "hello!"
    end
end
