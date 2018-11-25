Rails.application.routes.draw do
  resources :requests  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	devise_for :users

	get '/dashboard', to: 'dashboard#index'

	authenticated :user do
		root 'dashboard#index'
	end

	root 'dashboard#guest'
	
end
