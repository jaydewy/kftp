class Fee < ApplicationRecord
  belongs_to :event
  belongs_to :site_type

  validates :name, :amount, presence: true
  validates_with FeeValidator
end
