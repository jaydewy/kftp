class Charge < ApplicationRecord
  belongs_to :fee
  belongs_to :reservation
end
