class Vendor < ApplicationRecord
  has_many :sweets
  has_many :sweets, through: :sweets
  validates :name, uniqueness: true
end
