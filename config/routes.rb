Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vendor_sweets, only: [:new, :create, :edit, :update]
  resources :sweets, only: [:show, :index]
  resources :vendors, only: [:show, :index]
  get 'vendor_sweets', to: 'vendor_sweets#new'
  root :to => "vendors#index"
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"

end
