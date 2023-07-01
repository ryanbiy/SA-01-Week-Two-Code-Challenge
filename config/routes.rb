Rails.application.routes.draw do
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show]
  patch '/powers/:id', to: 'powers#update'
  resources :hero_powers, only: [:create]
end
