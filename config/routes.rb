Rails.application.routes.draw do
  resources :socks
  root 'dashboard#index'
end
