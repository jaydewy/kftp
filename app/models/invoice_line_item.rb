class InvoiceLineItem < ApplicationRecord
  belongs_to :invoice
  belongs_to :discount
  belongs_to :item, polymorphic: true

  # Instance methods

  # Class methods

end
