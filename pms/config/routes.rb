Rails.application.routes.draw do
  devise_for :controllers
  devise_for :users
  root "application#index"

  # root "users#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
