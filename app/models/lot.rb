class Lot < ApplicationRecord
    # belongs_to :rate # deprecated - now use fees attached to the site_type
    belongs_to :site_type
    has_many :reservations
    has_many :fees, through: :site_type

    validates :name, :site_type, presence: true

    # deprecated method - now, reservations need to determine their total lot fee
    #    based on the event they are associated with
    # def lot_fee
    #     self.rate.rate
    # end

    def active_fee
        # get the Fee for this lot for the active event
        #   Add handling for when no Fee is found - maybe direct to create Fee?
        ae = Event.active_event
        self.fees.find_by(event: ae)
    end

    # Class methods

    # add a report for all lots somewhere

    def self.active_lots
        # returns all available lots
        #   used to display the Lot list
        self.where(unavailable: false)
    end
    
    def self.vacant_lots
        # returns all available Lots that have no Reservation made for the active Event
        #   called in ReportsController
        ### try to figure out how to do this in pure Active Record, not pure SQL
        ae = Event.active_event
        join = "LEFT OUTER JOIN (SELECT `reservations`.* FROM `reservations` WHERE `reservations`.event_id = " + ae.id.to_s + ") as `reservations` ON `reservations`.lot_id = `lots`.id"
        self.where(unavailable: false).joins(join).where(reservations: { lot_id: nil })
    end
end
