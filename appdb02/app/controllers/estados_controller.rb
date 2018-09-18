class EstadosController < ApplicationController
  def index
    @estados= Estado.all()
  end

  def new
    @estado=Estado.new
  end

  def create
    estado=Estado.new
    estado.paise_id=params[:estado][:paise_id]
    estado.est_nombre=params[:estado][:est_nombre]
    estado.save 
    redirect_to  estados_index_path
  end

  def update
    id=params[:estado][:id]
    estado=Estado.find(id)
    estado.paise_id=params[:estado][:paise_id]
    estado.est_nombre=params[:estado][:est_nombre]
    estado.save
    redirect_to  estados_index_path
  end

  def edit
    id=params[:id]
    @estado=Estado.find(id)
  end

  def destroy
    id=params[:id]
    estado=Estado.find(id)
    estado.destroy
    redirect_to  estados_index_path
  end
end
