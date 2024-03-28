class Camper < ApplicationRecord
    has_many :groups
    has_many :reservations

    validates :last_name, :first_name, presence: true

    def full_name
        "#{last_name}, #{first_name}"
    end

    def active_reservations
        # Return all active reservations for a Camper
        Reservation.active_reservations.where(camper: self).sort()
    end

    # Class methods

    def self.email_list
        # Return an array of distinct emails for Campers with an active Reservation
        ae = Event.active_event
        camper_emails = Camper.joins(:reservations).where('reservations.event_id = ?', ae.id).select(:email).distinct
        camper_emails_2 = Camper.joins(:reservations).where('reservations.event_id = ?', ae.id).select(:email_2).distinct

        emails = Array.new()

        camper_emails.each do |ce|
            unless ce.email.nil?
                unless ce.email.empty?
                    emails << ce.email
                end
            end
        end
        camper_emails_2.each do |ce|
            unless ce.email_2.nil?
                unless ce.email_2.empty?
                    emails << ce.email_2
                end
            end
        end
        
        # camper_emails.each_with_object(Array.new()) do |ce, emails|
        #     emails << ce.email
        # end
        return emails
    end
end
