class VendorSweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet
    validates :price, presence: true
    validates_numericality_of :price, :greater_than => 0.0
end
