class PaginasController < ApplicationController
  def index
  	@titulo="Portada"
    @lista2=[]
    @lista2.push({"nombre"=>"Nicolas", "apellido"=>"sanchez"} )
    @lista2.push({"nombre"=>"Antonio", "apellido"=>"lopez"} )
    @lista2.push({"nombre"=>"Fatima", "apellido"=>"Greco"} )
  	@lista=["Nicolas", "Margarita", "Magaly","Esteban", "Otro"]
    @lista2.count()
  end

  def empresar
  	  	@titulo="Empresa"

  	

  end

  def contacto
  	  	@titulo="Contacto"
        @nombre=params[:nombre]
        @mensaje=params[:mensaje]+" devuelto"
  end

  def recibir
  	  	@titulo="Recibir"
  	  	@nombre=params[:nombre]
  	  	@mensaje=params[:mensaje]
        redirect_to action: 'contacto', nombre: @nombre, mensaje: @mensaje
  end
end