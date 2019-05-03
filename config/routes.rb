Rails.application.routes.draw do
  # resources :vendor_sweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vendors
  resources :sweets
  resources :vendor_sweets

end
