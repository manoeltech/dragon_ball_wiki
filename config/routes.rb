Rails.application.routes.draw do
  resources :affiliations
  resources :races
  resources :avatars
  devise_for :user_admins

  root "home#index"
end
