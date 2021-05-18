class Drone < ApplicationRecord
  enum status: %i[off hovering moving]
  enum position: %i[forward left right back up down]
  has_many :engines, dependent: :destroy
  has_one :orientation_sensor, dependent: :destroy
  has_one :gyroscope, dependent: :destroy
  validates :name, presence: true
end
