# Preview all emails at http://localhost:3000/rails/mailers/camper_mailer
class CamperMailerPreview < ActionMailer::Preview
    def confirmation_invoice_email
        reservation = Reservation.find(18)
        camper = reservation.camper
        CamperMailer.with(camper: camper, reservation: reservation).confirmation_invoice_email
    end
end
