class PaisesController < ApplicationController
  def index

    @paises= Paise.all();

  end

  def new
    @paise=Paise.new
  end

  def create
    paise=Paise.new
    paise.pais_nombre=params[:paise][:pais_nombre]
    paise.pais_code=params[:paise][:pais_code]
    paise.save
    redirect_to paises_index_path
  end

  def edit
    @id=params[:id]
    @paise=Paise.find(@id)


  end

  def update
    @id=params[:paise][:id]
    paise=Paise.find(@id)
    paise.pais_nombre=params[:paise][:pais_nombre]
    paise.pais_code=params[:paise][:pais_code]
    paise.save
    redirect_to paises_index_path    
  end

  def destroy
  end
end
