Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "home#index"

  get "/news", to: 'news#index'

  resources :articles do
    resources :comments
  end

  # Defines the root path route ("/")

end
