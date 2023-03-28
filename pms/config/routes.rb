Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root "application#index"
  resources :projects

  # root "users#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
