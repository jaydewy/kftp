class Event < ApplicationRecord
    has_many :reservations
    has_many :extras
    has_many :fees

    # Associations for linked events
    # The `linked_events` association allows an Event to have many other Events that reference it as their previous_event. The `previous_event` association allows an Event to belong to another Event as its previous_event. 
    # This setup enables a chain of events where each event can reference the one that came before it (or that it should otherwise pull Reservations from), creating a linked list of events.
    has_many :linked_events, class_name: "Event", foreign_key: "previous_event_id"
    belongs_to :previous_event, class_name: "Event", optional: true                                                                                  

    before_save :deactivate_current_event, if: :activating_new_event?

    validates :name, :start_date, :end_date, presence: true

    scope :active, -> { where(active: true) }

    # Instance methods

    def copy_reservations_from_previous_event!
        # This method copies all reservations from the previous event to the current event, excepting any marked non-renewable.
        # It duplicates each reservation, associates it with the current event, sets the status to pending, and saves it.
        return unless previous_event.present?
        previous_event.reservations.each do |r|
            next if r.non_renewable? # Skip non-renewable reservations
            next unless r.active? # Skip reservations that are not active
            self.reservations.create(
                camper: r.camper,
                lot: r.lot,
                discount: r.discount,
                group: r.group,
                status: :pending,
                length: r.length,
                vehicle_license: r.vehicle_license,
                special_request: r.special_request
            )
        end
    end

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
