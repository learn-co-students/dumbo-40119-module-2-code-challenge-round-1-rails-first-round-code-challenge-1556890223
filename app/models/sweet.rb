class Sweet < ApplicationRecord
  has_many :vendor_sweets, dependent: :delete_all
  has_many :vendors, through: :vendor_sweets
end
