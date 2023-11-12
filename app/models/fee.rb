class Fee < ApplicationRecord
  belongs_to :event
  belongs_to :site_type
  has_many :charges

  validates :name, :amount, presence: true
  validates_with FeeValidator
end
