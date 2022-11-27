class Extra < ApplicationRecord
    has_many :extra_charges
    belongs_to :event
    

    # to-do list
    #   Need to update all Reservations whenever an Extra is created, updated, or deleted
end
