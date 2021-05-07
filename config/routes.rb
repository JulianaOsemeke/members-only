Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "devise/registrations" } 
  root 'posts#index'
  resources :posts, only: [:new, :create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
