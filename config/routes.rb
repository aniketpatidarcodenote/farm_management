Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "farmers#index"

  get "/signup", to: "farmers#new"
  post "/signup", to: "farmers#create"
  resources :farmers

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  # get "/farmers", to: "farmers#index"
  # get "/farmers/new", to: "farmers#new"
  # post "/farmers", to: "farmers#create"
  # get "/farmers/:id", to: "farmers#show"

end
