Rails.application.routes.draw do
  resources :socks do
    get 'mine', to: :mine, on: :collection
	end
  resources :requests  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

	authenticated :user do
		root 'dashboard#index'
	end

	root 'dashboard#guest'
end
