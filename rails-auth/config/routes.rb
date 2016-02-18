Rails.application.routes.draw do

      root to: "welcome#index"

      get '/login' => "sessions#new"

      post '/sessions' => "sessions#create"

      get '/sign_up' => "users#new", as: "sign_up"

      resources :users
  
end
