class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates_presence_of :price
  validates :price, numericality: { only_integer: true }
  validates :price, numericality: { greater_than: 0 }
  validates_uniqueness_of :vendor_id, scope: :sweet_id, message: "already carries this variety of sweet. Please choose another."
end
