Rails.application.routes.draw do
	root 'dashboard#index'
  	devise_for :users
end
