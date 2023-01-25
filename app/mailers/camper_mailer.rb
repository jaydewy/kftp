class CamperMailer < ApplicationMailer
    before_action :set_camper

    default to:     -> { @camper.email },
    bcc:     -> { 'payments@kinmountfair.net' },
    from:   -> { 'trailerpark@kinmountfair.net' }

    def confirmation_invoice_email
        @reservation = params[:reservation]

        mail(subject: "Confirmation: #{@reservation.event.name} Trailer Park Lot #{@reservation.lot.name}")
    end

    def reminder_email
        
    end

    private

    def set_camper
        @camper = params[:camper]
    end

    # def set_reservation
    #     @reservation = params[:reservation]
    # end

end
