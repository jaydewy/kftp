class ExtraCharge < ApplicationRecord
    belongs_to :reservation
    belongs_to :extra
end
