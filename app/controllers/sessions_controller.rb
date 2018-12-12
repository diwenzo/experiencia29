class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  def create
    @user = User.find_by(email: params[:user][:email], password: params[:user][:password])

    if @user.present?
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Has ingresado'
    else
      redirect_to root_path, alert: 'Usuario o clave no son válidas'
    end



  end

end
