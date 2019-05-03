class Vendor < ApplicationRecord
has_many :vendersweets
has_many :sweets, through: :vendersweets
end
