Rails.application.routes.draw do
  # conenects index method into the controllers
  root 'dojos#index'

  get '/dojos/result' => 'dojos#result'
  post '/dojos' => 'dojos#create'
end
