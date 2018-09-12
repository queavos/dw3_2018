Rails.application.routes.draw do
  get 'paises/index'
  get 'paises/new'
  post 'paises/create'
  get 'paises/edit/:id', to: 'paises#edit', as: 'paises_edit'
  patch 'paises/edit/:id', to: 'paises#update', as: 'paises_update'
  get 'paises/destroy'

  root 'paises#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
