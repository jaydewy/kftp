class Fee < ApplicationRecord
  belongs_to :event
  belongs_to :site_type

  validates :name, presence: true
  validates :amount, presence: true
  validates_with FeeValidator
end
