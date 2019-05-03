class VendorSweet < ApplicationRecord
    belongs_to :sweet 
    belongs_to :vendor

    validates_presence_of :price
    validates_numericality_of :price, {
        greater_than: 0
    } 
    #this checks for validation of respective id's // incomplete method
    #validates_uniqueness_of :sweet_id, :message => "is sold by this vendor already."
    #validates_uniqueness_of :vendor_id, :message => "sells this sweet already."
end
