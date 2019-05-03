class Sweet < ApplicationRecord
	has_many :stocks
	has_many :vendors, through: :stocks

	validates_presence_of :name
end
