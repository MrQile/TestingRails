Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'statics#index'

  get 'products/itemsnew'
  resources :statics
  resources :products
  resources :productattributes
end
