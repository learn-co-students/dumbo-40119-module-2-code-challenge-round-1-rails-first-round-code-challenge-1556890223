# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vendor.destroy_all
Sweet.destroy_all
VendorSweet.destroy_all

Vendor.reset_pk_sequence
Sweet.reset_pk_sequence
VendorSweet.reset_pk_sequence

vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

vendors.each do |vendor|
  Vendor.create(name: vendor)
end

sweets.each do |sweet|
  Sweet.create(name: sweet)
end

18.times do
  def new
    create = VendorSweet.new(price: rand(300)+100, sweet: Sweet.all.sample, vendor: Vendor.all.sample)
    made = VendorSweet.all.select{|vendorsweet| vendorsweet.sweet_id == create.sweet_id && vendorsweet.vendor_id == create.vendor_id}
    if made != []
      return new
    else
      create.save!
    end
  end
  new
end
