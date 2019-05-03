class Vendor < ApplicationRecord
  has_many :vendor_sweets, dependent: :delete_all
  has_many :sweets, through: :vendor_sweets

  def email
    @alias = self.name.to_s.split().join(".").downcase.delete! "'"
    return "#{@alias}@candykingdom.com"
  end

end
