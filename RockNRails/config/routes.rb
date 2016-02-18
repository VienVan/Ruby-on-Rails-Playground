Rails.application.routes.draw do
  get 'records' => "records#index"

  get 'records/new' => "records#new"

  post 'records/' => "records#create"

  delete 'records/:id' => "records#destroy"

  get 'records/:id' => "records#show", as: "record"


end
