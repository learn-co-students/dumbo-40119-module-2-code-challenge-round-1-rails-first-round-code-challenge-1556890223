class VendorSweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor

  validates :price, presence: true, numericality: {only_integer: true, greater_than: 100, less_than_or_equal_to: 500}
  validates :sweet, uniqueness: {scope: :vendor}
end
