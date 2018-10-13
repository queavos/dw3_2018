class PaisesController < ApplicationController
  def index

    #@paises= Paise.all(); #trae  todo
    #@paises= Paise.find([2,10]) #trae  2 y 10
    @paises= Paise.where(" pais_nombre = ? or pais_code = ?", "Brasil", "BO")  
    #@paises1= Paise.first # trae el primero
    @paises1= Paise.find(2) # trae el primero id =2
  end

  def new
    @paise=Paise.new
  end

  def create
    @paise=Paise.new
    @paise.pais_nombre=params[:paise][:pais_nombre]
    @paise.pais_code=params[:paise][:pais_code]
    
    if @paise.save 

     redirect_to paises_index_path
     else
      
      render "new"
    end  
         
    
    
  end

  def edit
    @id=params[:id]
    @paise=Paise.find(@id)


  end

  def update
    @id=params[:paise][:id]
    @paise=Paise.find(@id)
    @paise.pais_nombre=params[:paise][:pais_nombre]
    @paise.pais_code=params[:paise][:pais_code]
    if @paise.save
      redirect_to paises_index_path
    else
      render "edit"
    end        
  end

  def destroy
    @id=params[:id]
    paise=Paise.find(@id)
    paise.destroy
    redirect_to paises_index_path  
  end
end
