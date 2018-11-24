Rails.application.routes.draw do
  resources :socks
	root 'dashboard#index'
  devise_for :users
end
