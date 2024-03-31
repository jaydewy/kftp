class Charge < ApplicationRecord
  belongs_to :fee
  belongs_to :reservation
  has_many :invoice_line_items, as: :item

  # Instance methods

  def name
    # returns a string with the "name" of the Charge, in the form "lot name - fee type".
    #   Intended to be used with InvoiceLineItem as the item name.
    return self.reservation.lot.name + " - " + self.fee.name
  end

  # Class methods

end
