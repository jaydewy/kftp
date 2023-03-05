class Event < ApplicationRecord
    has_many :reservations
    has_many :extras
    has_many :fees

    before_save :deactivate_current_event, if: :activating_new_event?

    validates :name, :start_date, :end_date, presence: true

    scope :active, -> { where(active: true) }

    # Class methods

    def self.active_event
        # the before_save callback should ensure that there is only ever one Event to return
        ### can this be just a scope?????
        Event.find_by(active: true)
    end


    private

    def activating_new_event?
        # The before_save callback runs before an Event is created or updated.
        #   This checks if the event being created or updated is being set as active
        self.active
    end

    def deactivate_current_event
        # Find the currently active event and deactivate it. If no event is active, do nothing
        if current_active_event = Event.find_by(active: true)
            current_active_event.update(active: false)
        else
            # do nothing
        end
    end
end
