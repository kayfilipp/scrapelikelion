Rails.application.routes.draw do
  get '/scrape/index'=>'scrape#index'
  root 'scrape#index'
  
  # Email Route
  get '/scrape/sendMail' => 'scrape#sendMail'
  
  
  
end
