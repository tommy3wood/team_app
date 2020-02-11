Rails.application.routes.draw do
  namespace :api do
    get '/players' => 'players#index'
    post '/players' => 'players#create'
    get '/players/:id' => 'players#show'
    patch '/players/:id' => 'players#update'
    delete '/players/:id' => 'players#destroy'
  end
end
