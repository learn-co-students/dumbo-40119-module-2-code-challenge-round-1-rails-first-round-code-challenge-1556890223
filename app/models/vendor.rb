class Vendor < ApplicationRecord
  has_many :vendor_sweets, dependent: :delete_all
  has_many :sweets, through: :vendor_sweets

  def email
    if self.name.to_s.include? ("'")
      @alias = self.name.to_s.split().join(".").downcase.delete! "'"
    else
      @alias = self.name.to_s.split().join(".").downcase
      return "#{@alias}@candykingdom.com"
    end
  end

end
