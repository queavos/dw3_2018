Rails.application.routes.draw do
  get 'estados/index'
  get 'estados/new'
  post 'estados/create', to: 'estados#create', as: 'estados_create'
  patch 'estados/edit/:id', to: 'estados#update', as: 'estados_update'
  get 'estados/edit/:id', to: 'estados#edit', as: 'estados_edit'
  get 'estados/destroy/:id',  to: 'estados#destroy', as: 'estados_borrar'
  get 'paises/index'
  get 'paises/new'
  post 'paises/create'
  get 'paises/:id/edit', to: 'paises#edit', as: 'paises_edit'
  patch 'paises/:id/edit', to: 'paises#update', as: 'paises_update'
  get 'paises/borrar/:id', to: 'paises#destroy', as: 'paises_borrar'

  get 'estados/crear'
  root 'paises#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
