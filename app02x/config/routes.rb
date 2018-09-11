Rails.application.routes.draw do
  get 'paginas/index'
  get 'paginas/empresa'
  get 'paginas/contacto'
  post 'paginas/contacto', to: 'paginas#recibir'
  root 'paginas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
