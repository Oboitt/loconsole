Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  devise_for :users
  root to: "consoles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :consoles do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :reviews, only: :destroy
  get "dashboard", to: "profiles#dashboard"
  # ressources :bookings, only: [:update]

  resources :bookings do
    member do
      patch :accept
      patch :reject
    end
  end
end
