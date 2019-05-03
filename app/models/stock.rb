class Stock < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor

  validates_presence_of :price, :sweet_id, :vendor_id
  
  validates :price, numericality: {greater_than:0}
end
