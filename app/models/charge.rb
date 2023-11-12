class Charge < ApplicationRecord
  belongs_to :fee
  belongs_to :reservation
  has_many :invoice_line_items, as: :item

end
