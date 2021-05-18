class Engine < ApplicationRecord
  enum status: %i[off on]
  belongs_to :drone
end
