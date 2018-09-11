Rails.application.routes.draw do
  get 'prueba2/index'
  get 'prueba2/empresa'

  #rutas prueba
  get 'prueba/portada'
  get 'prueba/contacto'
  root 'prueba2#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
