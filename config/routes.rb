Rails.application.routes.draw do
  get '/scrape/index'=>'scrape#index'
  root 'scrape#index'
  
  # Email Route
  get "/send_mail" => "email#send_mail"
  
  
  
end
