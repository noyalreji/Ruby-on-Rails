Rails.application.routes.draw do
  root 'rpg#index'
  
  post "/proceed" => 'rpg#new'
end
