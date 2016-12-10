Rails.application.routes.draw do
  resources :moves
  get '/dinheiro', to: 'moves#dinheiro'
  get '/cartao', to: 'moves#cartao'
  get '/poupanca', to: 'moves#poup'
  get 'info/sobre_mim'
  root to: 'moves#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

