class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates_presence_of :price, :vendor_id, :sweet_id
  validates :price, numericality:{greater_than: 0}
  validates :price, numericality:{only_integer: true}
end
