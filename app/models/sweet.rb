class Sweet < ApplicationRecord
  has_many :vendors
  has_many :vendors, through: :sweets
  validates :name, uniqueness: true
end
