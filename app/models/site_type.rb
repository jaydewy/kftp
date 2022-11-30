class SiteType < ApplicationRecord
    has_many :lots
    has_many :fees

    validates :name, presence: true

    def active_fee
        # get the Fee for this site type for the active event
        #   Add handling for when no Fee is found - maybe direct to create a Fee?
        if ae = Event.active_event
            if self.fees.find_by(event: ae)
                self.fees.find_by(event: ae)
            else
                # self.errors.add(:fee, :invalid, message: "There is no Fee defined for this Lot Type for the actvie Event.")
                return false
            end
        else
            # self.errors.add(:event, :invalid, message: "There is no Active Event set.")
            return false
        end
    end
end
