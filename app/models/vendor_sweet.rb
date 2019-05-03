class VendorSweet < ApplicationRecord
    belongs_to :vendor 
    belongs_to :sweet

    validates_numericality_of :price, :greater_than => 0 
    validates :price, numericality: { only_integer: true }

end
