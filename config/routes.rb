Rails.application.routes.draw do
  resources :socks
	devise_for :users

	authenticated :user do
		root 'dashboard#index'
	end

	root 'dashboard#guest'
end
