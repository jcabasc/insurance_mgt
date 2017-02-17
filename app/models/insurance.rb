class Insurance < ApplicationRecord
  belongs_to :vehicle_instance
  scope :active, -> { where(active: true) }
end
