class Extra < ApplicationRecord
    has_many :extra_charges
    belongs_to :event
end
