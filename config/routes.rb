Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :places do
    resources :bookings do
      member do
        patch :accept
        patch :decline
      end
    end
  end

  get "/dashboard", to: "pages#dashboard"

end
