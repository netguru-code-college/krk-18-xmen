Rails.application.routes.draw do
  resources :socks
	devise_for :users
	get 'mine' => 'socks#mine'

	authenticated :user do
		root 'dashboard#index'
	end

	root 'dashboard#guest'
end
