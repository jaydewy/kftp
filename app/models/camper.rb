class Camper < ApplicationRecord
    has_many :groups
    has_many :reservations

    validates :last_name, :first_name, presence: true

    def full_name
        "#{last_name}, #{first_name}"
    end

    # Class methods

    def self.email_list
        # Return an array of distinct emails for Campers with an active Reservation
        ae = Event.active_event
        camper_emails = Camper.joins(:reservations).where('reservations.event_id = ?', ae.id).select(:email).distinct
        camper_emails.each_with_object(Array.new()) do |ce, emails|
            emails << ce.email
        end
    end
end
