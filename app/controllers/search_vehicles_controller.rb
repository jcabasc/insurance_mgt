class SearchVehiclesController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    vehicle = current_user.vehicles.where(placa: params[:placa]).last
    if vehicle
      flash[:success] = 'Tu carro se encontró exitosamente'
      redirect_to(vehicle)
    else
      flash[:alert] = 'El carro no fue encontrado'
      render :new
    end
  end
end