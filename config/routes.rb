Rails.application.routes.draw do
  resources :vendor_sweets, only: [:index, :new, :create]
  resources :vendors, only: [:index, :show]
  resources :sweets, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
