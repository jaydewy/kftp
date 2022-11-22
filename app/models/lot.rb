class Lot < ApplicationRecord
    # belongs_to :rate # deprecated - now use fees attached to the site_type
    belongs_to :site_type
    has_many :reservations
    has_many :fees, through: :site_type

    validates :name, :site_type, presence: true

    # to-do list
    #   still need to check for conflicts with reservations

    # deprecated method - now, reservations need to determine their total lot fee
    #    based on the event they are associated with
    # def lot_fee
    #     self.rate.rate
    # end

    def active_fee
        ae = Event.active_event
        self.fees.find_by(event: ae)
    end
end
