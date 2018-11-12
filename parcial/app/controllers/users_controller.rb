class UsersController < ApplicationController
  def index
    @users=User.all
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new
    @user.nombres=params[:user][:nombres]
    @user.apellidos=params[:user][:apellidos]
    @user.fenac=params[:user][:fenac]
    @user.email=params[:user][:email]
    @user.username=params[:user][:username]
    @user.password=params[:user][:password]
    @user.rol=params[:user][:rol]
    @user.recibemails=params[:user][:recibemails]
    @user.save
    redirect_to users_index_path
  end

  def edit
    @user=User.find(params[:id])

  end

  def update
    @user=User.find(params[:id])
     @user.nombres=params[:user][:nombres]
    @user.apellidos=params[:user][:apellidos]
    @user.fenac=params[:user][:fenac]
    @user.email=params[:user][:email]
    @user.username=params[:user][:username]
    @user.password=params[:user][:password]
    @user.rol=params[:user][:rol]
    @user.recibemails=params[:user][:recibemails]
    @user.save
    redirect_to users_index_path
  end

  def destroy
     @user=User.find(params[:id])
     @user.destroy
     redirect_to users_index_path
  end
end
