Rails.application.routes.draw do
	devise_for :users

	get '/dashboard', to: 'dashboard#index'

	authenticated :user do
		root 'dashboard#index'
	end

	root 'dashboard#guest'
	
end
