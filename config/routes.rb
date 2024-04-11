Rails.application.routes.draw do
  namespace "backoffice" do
    resources :affiliations
    resources :races
    resources :avatars do
      get "/ranking", to: "avatars#ranking", on: :collection
    end
    devise_for :user_admins, :controllers => { :sessions => "backoffice/sessions" }
    root "dashboard#index"
  end

  root "home#index"
end
