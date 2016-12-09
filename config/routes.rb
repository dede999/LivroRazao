Rails.application.routes.draw do
  resources :moves
  get 'info/sobre_mim'
  root to: 'moves#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

