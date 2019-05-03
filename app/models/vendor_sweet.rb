class VendorSweet < ApplicationRecord
    belongs_to :sweet 
    belongs_to :vendor

    validates_presence_of :price
    validates_numericality_of :price, {
        greater_than: 0
    } 
    #don't forget to find the float
end
