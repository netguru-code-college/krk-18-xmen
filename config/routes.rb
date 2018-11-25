Rails.application.routes.draw do
  resources :socks
  resources :requests  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'mine' => 'requests#mine'

  devise_for :users

	authenticated :user do
		root 'dashboard#index'
	end

	root 'dashboard#guest'
end
