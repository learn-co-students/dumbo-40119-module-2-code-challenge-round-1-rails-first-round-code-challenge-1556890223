class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates_presence_of :price
  validates :price, numericality: {greater_than: 0, only_integer: true}
end
