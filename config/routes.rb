Rails.application.routes.draw do
resources :sweets, only: [:index, :show, :new, :create, :edit, :update , :destroy]
resources :vendors, only: [:index, :show, :new, :create, :edit, :update , :destroy]
resources :vendor_sweets, only: [:index, :show, :new, :create, :edit, :update , :destroy]
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"

end
