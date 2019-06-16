Rails.application.routes.draw do
  devise_for :users
  root to: 'regists#index'


  resources :regists
end
