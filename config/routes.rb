Rails.application.routes.draw do
  devise_for :userms
  devise_for :models #esta no la voy a usar
  resources :portafolios
  #get 'home/index'
  resources :widgets

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  get 'home/about'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
