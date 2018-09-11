Rails.application.routes.draw do
  get 'mensajes/index'
  get 'mensajes/new'
  post 'mensajes/create'
  get 'mensajes/edit/:id', to: 'mensajes#edit', as: 'mensajes_edit'
  post 'mensajes/update'
  get 'mensajes/destroy/:id', to: 'mensajes#destroy', as: 'mensajes_borrar'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'mensajes#index'
end
