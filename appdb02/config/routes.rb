Rails.application.routes.draw do
  get 'paises/index'
  get 'paises/new'
  get 'paises/create'
  get 'paises/edit'
  get 'paises/update'
  get 'paises/destroy'

  root 'paises#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
