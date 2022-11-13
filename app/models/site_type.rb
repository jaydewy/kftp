class SiteType < ApplicationRecord
    has_many :lots
    has_many :fees
end
