Rails.application.routes.draw do
  resources :posts

  get 'faqs', to: "pages#faqs"
  get 'terms_and_conditions', to: "pages#terms_and_conditions"
  get 'team', to: "pages#team"

end
