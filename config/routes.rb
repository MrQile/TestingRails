Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'statics#index'

  resources :statics

  resources :products

  resources :product_attributes
end
