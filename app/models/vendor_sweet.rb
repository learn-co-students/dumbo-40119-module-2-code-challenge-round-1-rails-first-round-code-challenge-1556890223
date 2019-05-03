class VendorSweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor
  # validates :price_sold, presence: true
  validates_numericality_of :price_sold, {
  	only_float: true,
  	greater_than: 0
  }
end
