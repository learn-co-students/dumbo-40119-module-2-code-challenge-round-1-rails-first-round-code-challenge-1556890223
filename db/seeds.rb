# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

VendorSweet.destroy_all
Vendor.destroy_all
Sweet.destroy_all


# vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
# sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

# vendors.each do |vendor|
#   Vendor.create(name: vendor)
# end
#
# sweets.each do |sweet|
#   Sweet.create(name: sweet)
# end

vendor1 = Vendor.create(name: "Insomnia Cookies")
vendor2 = Vendor.create(name: "Cookies Cream")
vendor3 = Vendor.create(name: "Carvel")

sweet1 = Sweet.create(name: "Chocolate Chip Cookie")
sweet2 = Sweet.create(name: "Chocolate Chunk Cookie")
sweet3 = Sweet.create(name: "White Chocolate Cookie")


VendorSweet.create(price: 10, vendor_id: vendor1.id, sweet_id: sweet1.id)
VendorSweet.create(price: 5, vendor_id: vendor2.id, sweet_id: sweet2.id)
VendorSweet.create(price: 15, vendor_id: vendor3.id, sweet_id: sweet3.id)
