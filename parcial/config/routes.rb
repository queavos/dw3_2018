Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  post 'users/create'
  get 'users/edit/:id', to: 'users#edit', as: 'users_edit'
  patch 'users/update/:id',to: 'users#update', as: 'users_update'
  get 'users/destroy/:id', to: 'users#destroy', as: 'users_delete'
  #  patch 'paises/:id/edit', to: 'paises#update', as: 'paises_update'
  #get 'paises/borrar/:id', to: 'paises#destroy', as: 'paises_borrar'
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
