Rails.application.routes.draw do
  resource :users
  resource :homes
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  get "/new", to: "homes#new"
  get "/new_login", to: "home#new_login"
  root to: "homes#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
