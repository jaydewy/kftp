class Fee < ApplicationRecord
  belongs_to :event
  belongs_to :site_type
end
