class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  # validates_presence_of :price

  # validates :price presence :true, numericality: {greater_than:0}
end
