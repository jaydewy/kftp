class InvoiceLineItem < ApplicationRecord
  belongs_to :invoice
  belongs_to :discount
  belongs_to :item, polymorphic: true

  # Instance methods

  def line_total
    subtotal = self.item_quantity * self.item_unit_price
    if self.discount
      if self.discount.is_percent
        return subtotal * (1 - self.discount.amount)
      else
        return subtotal - self.discount.amount
      end
    else
      return subtotal
    end
  end

  # Class methods

end
