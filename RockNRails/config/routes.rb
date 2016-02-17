Rails.application.routes.draw do
  get 'records' => "records#index"

  get 'records/show' => "records#new"

  post 'records/' => "records#create"

  get 'records/:id' => "records#show", as: "record" 


end
