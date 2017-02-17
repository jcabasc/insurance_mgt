class UsersController < ApplicationController
  before_action :authenticate_user!
  expose :user

  def update
    if user.update(user_params)
      flash[:success] = 'El usuario se actualizó exitosamente!'
      redirect_to edit_user_path(user)
    else
      flash[:alert] = 'El usuario no se actualizó exitosamente!'
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:nombre, :apellido, :documento, :tipo_documento, :email, :telefono)
  end
end