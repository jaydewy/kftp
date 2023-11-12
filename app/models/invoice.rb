class Invoice < ApplicationRecord
  has_and_belongs_to_many :reservations
  has_many :invoice_line_items
  has_many :payments

  enum :status, { draft: 1, unpaid: 2, paid: 3 }, prefix: true

  # Instance methods

  # Class methods

end
