Rails.application.routes.draw do
  resources :affiliations
  resources :races
  resources :avatars
  devise_for :user_admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
