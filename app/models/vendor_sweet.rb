class VendorSweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor

  validates :price, presence: true
  validates :price, numericality: {only_integer: true}
  validates :price, numericality: {greater_than: 0}
  # validates :sweet_id, uniqueness: true
  # validates :vendor_id, uniqueness: true
end
