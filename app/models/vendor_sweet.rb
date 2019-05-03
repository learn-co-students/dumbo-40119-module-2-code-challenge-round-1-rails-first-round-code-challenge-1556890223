class VendorSweet < ApplicationRecord
belongs_to:sweet
belongs_to:vendor


validate presence:, :price true
validates :price, :numericality => { :greater_than_or_equal_to => 0 }
validates :price, numericality: { only_integer: true }
# validates :thing, uniqueness: true
end
