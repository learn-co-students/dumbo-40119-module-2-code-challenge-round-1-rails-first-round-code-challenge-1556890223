class VendorSweet < ApplicationRecord
  belongs_to :sweet
  belongs_to :vendor

  validates_presence_of :price
  validates :price, numericality: {
    greater_than: 0,
    integer: true
  }
  # validates_uniqueness_of (:vendor_id && :sweet_id), :message=> "is already sold by this vendor, please choose another vendor or sweet and try again."
  validates :vendor, uniqueness: { scope: :sweet, :message=>"already sells this sweet! Choose another vendor or sweet and try again"}
end
