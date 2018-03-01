Rails.application.routes.draw do
  get '/scrape/index'=>'scrape#index'
  root 'scrape#index'
end
