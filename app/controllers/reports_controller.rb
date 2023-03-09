class ReportsController < ApplicationController
    
    def totals
        # temporary fn. Get all payments for all reservations, by PaymentMethod
        # Get all charges and lot fees
        @totals_hash = Payment.get_payment_totals
        @payment_methods = PaymentMethod.all
        @extra_totals_hash = ExtraCharge.get_extra_totals
        @extras = Extra.all
    end

    def daily_totals
        # get all payments made on the specified date, by PaymentMethod
        @totals_hash = Payment.get_payment_totals_by_date(Date.today)
        @payment_methods = PaymentMethod.all
    end

    def event_totals
        # get all payments made for the specified event, by PaymentMethod
        @totals_hash = Payment.get_payment_totals_active_event
        @payment_methods = PaymentMethod.all
        @active_event = Event.active_event
    end

    def event_checkins
        # get all Reservations checked in for a given event
        #   see updated ReservationsController::in_park
    end

    def email_list
        # get all (primary) emails from reservations for the active event
        @active_event = Event.active_event
        @emails = Camper.email_list        
    end

    def invoice_list
        # get all invoices sent
        @invoices = Invoice.all
    end

    def vacant_lots
        # get all vacant active Lots for the active Event
        @active_event = Event.active_event
        @vacancies = Lot.vacant_lots
    end

    def discount_list
        # get list of all Reservations under each Discount for active Event
        @discounts = Discount.all
        @active_event = Event.active_event
        @disc_report = Discount.discount_counts
        @res_list = Reservation.get_reservations_by_discount
    end
end
