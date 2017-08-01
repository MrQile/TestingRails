Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'statics#index'

  get 'statics/new'

  post 'statics/create'
  resources :products
end
