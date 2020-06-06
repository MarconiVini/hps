Rails.application.routes.draw do

  resources :lojas
  resources :estadias
  resources :cargos
  resources :usuarios
  resources :veiculos
  resources :vagas
  resources :convenios
  resources :tipo_veiculos
  resources :planos
  resources :clientes
  get 'api/dashboard', to: 'dashboard#index'
  get 'api/dashboard/grafico', to: 'dashboard#grafico'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
