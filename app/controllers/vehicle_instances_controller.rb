class VehicleInstancesController < ApplicationController
  before_action :authenticate_user!
  expose :vehicle_instance
end