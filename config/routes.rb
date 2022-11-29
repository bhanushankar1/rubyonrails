Rails.application.routes.draw do
  devise_for :admin_users
  resources :mrks
  resources :schols
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
