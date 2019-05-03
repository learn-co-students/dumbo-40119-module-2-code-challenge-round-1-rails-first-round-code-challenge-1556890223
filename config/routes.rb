Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :vendor_sweets, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sweets', to: "sweets#index", as: "sweets"
  get '/vendors', to: "vendors#index", as: "vendors"
  resources :sweets, only: [:show]
  resources :vendors, only: [:show]

end
