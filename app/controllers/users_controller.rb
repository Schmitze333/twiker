class UsersController < ApplicationController
  
  def show
    @user = User.find(session[:user])
  end

  def create
    user = User.new
    user.name = params[:nombre]
    user.email = params[:correo]
    user.password = params[:clave]
    if user.save
      redirect_to root_path
    else
      puts user.errors.messages
      flash[:notice] = "Errors occured: " + user.errors.messages.inspect
      redirect_to root_path
    end
  end

  def login
    user = User.where(email: params[:email]).first
    if user.nil?
      flash[:notice] = "This user does not exist!"
      redirect_to root_path
    else
      if user.password == params[:password]
        session[:user] = user.id
        redirect_to user
      else
        flash[:notice] = "Password incorrect!"
        redirect_to root_path
      end
    end
  end

  def logout
    session[:user] = nil
    redirect_to root_path
  end
end
