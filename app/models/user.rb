class User < ApplicationRecord
  devise :database_authenticatable, :registerable
  has_many :vehicles, class_name: "VehicleInstance"
end
