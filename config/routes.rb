Rails.application.routes.draw do

  get 'count', to: 'count#index'

  post 'count', to: 'count#count'

  resources :rules
  root to: 'count#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
