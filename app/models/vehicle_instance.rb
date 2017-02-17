class VehicleInstance < ApplicationRecord
  belongs_to :user
  has_many :insurances

  def active_soat?
    self.insurances.active.any?
  end

end
