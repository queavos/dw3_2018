class MensajesController < ApplicationController
  def index
    @msjs=Mensaje.all

  end

  def new

  end

  def create
    msj=Mensaje.new
    msj.nombre=params[:nombre]
    msj.mensaje=params[:mensaje]
    msj.save
    redirect_to :root
  end

  def edit
    @id=params[:id]
    @msj=Mensaje.find(@id)
  end

  def update
    @id=params[:id]
    msj=Mensaje.find(@id)
    msj.nombre=params[:nombre]
    msj.mensaje=params[:mensaje]
    msj.save
    redirect_to :root
  end

  def destroy
    @id=params[:id]
    msj=Mensaje.find(@id)
    msj.destroy
    redirect_to :root
  end
end
