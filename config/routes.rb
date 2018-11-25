Rails.application.routes.draw do
  resources :socks
  resources :requests do
    get 'mine', to: :mine, on: :collection
  end

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

	authenticated :user do
		root 'dashboard#index'
	end

	root 'dashboard#guest'
end
