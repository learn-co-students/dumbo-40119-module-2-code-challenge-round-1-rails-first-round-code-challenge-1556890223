class VendorSweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor


validates_presence_of :price
validates_inclusion_of :price, :in => 1..1000000

end
