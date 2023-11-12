class Invoice < ApplicationRecord
  has_and_belongs_to_many :reservations
  has_many :invoice_line_items
  has_many :payments
end
