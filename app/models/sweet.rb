class Sweet < ApplicationRecord
has_many :vendersweets
has_many :vendors, through: :vendersweets 
end
