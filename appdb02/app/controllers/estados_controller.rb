class EstadosController < ApplicationController
  def index
    @estados= Estado.all()
   # @estados= Estado.where("paise_id=?", 2)
  end

  def new
    @estado=Estado.new
  end
  def crear
    @estado=Estado.new
    @estado.paise_id=1
    @estado.est_nombre="cualquiera"
    
    if @estado.save 
      redirect_to  estados_index_path
    else 
      render "new"  
  end 
    
  end

  def create
    @estado=Estado.new
    @estado.paise_id=params[:estado][:paise_id]
    @estado.est_nombre=params[:estado][:est_nombre]
    
    if @estado.save 
      redirect_to  estados_index_path
    else 
      render "new"  
  end
end
  def update
    id=params[:estado][:id]
    @estado=Estado.find(id)
    @estado.paise_id=params[:estado][:paise_id]
    @estado.est_nombre=params[:estado][:est_nombre]
    
    if @estado.save 
      redirect_to  estados_index_path
    else 
      render "edit"  
  end
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
