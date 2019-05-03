class Vendor < ApplicationRecord
	has_many :stocks
	has_many :sweets, through: :stocks

	validates_uniqueness_of :name
	validates_presence_of :name
end
