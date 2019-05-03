Rails.application.routes.draw do
  resources :vendors
  resources :vendor_sweets
  resources :sweets

  #Refactor later to contain only needed paths

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
