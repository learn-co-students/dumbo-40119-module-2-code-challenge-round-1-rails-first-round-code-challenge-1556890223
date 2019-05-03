class Vendorsweet < ApplicationRecord
    belongs_to :vendor
    belongs_to :sweet
    validates :price
    Vendor.create(price: nil).valid?
end
