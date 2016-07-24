Rails.application.routes.draw do
  post '/', :to => 'app#index'
  post '/bookings/save', :to => 'bookings#create'
  get '/bookings/user_list', :to => 'bookings#user_list'
  get '/flights/list', :to => 'flights#list'
  get '/city_airports/list', :to => 'city_airports#list'
  get '/popular_destinations/list', :to => 'popular_destinations#list'
  get '/trending_places/list', :to => 'trending_places#list'
  resources :bookings
  resources :airlines  
  resources :flights  
  resources :city_airports    
  resources :popular_destinations  
  resources :trending_places
  resources :app  
end
