class Vendor < ApplicationRecord
  has_many :vendor_sweets, dependent: :delete_all
  has_many :sweets, through: :vendor_sweets
end
