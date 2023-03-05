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
        payments = Payment.get_payments_by_date(dt)
        # methods = PaymentMethod.all

        payments.each_with_object(Hash.new(0)) do |p, totals|
            totals[p.payment_method] += p.amount
        end
    end

    def event_totals
        # get all payments made for the specified event, by PaymentMethod
    end

    def event_checkins
        # get all reservations checked in for a given event
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
        # get all vacant active lots for the active event
        @active_event = Event.active_event
        @vacancies = Lot.vacant_lots
    end
end
