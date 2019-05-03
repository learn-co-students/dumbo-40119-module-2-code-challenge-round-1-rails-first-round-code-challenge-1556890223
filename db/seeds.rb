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

# vendors = ["Insomnia Cookies", "Cookies Cream","Carvel","Gregory's Coffee","Duane Park Patisserie","Tribeca Treats"]
# sweets = ["Chocolate Chip Cookie", "Chocolate Chunk Cookie","M&Ms Cookie","White Chocolate Cookie","Brownie","Peanut Butter Icecream Cake", ]

# vendors.each do |vendor|
#   Vendor.create(name: vendor)
# end
#
# sweets.each do |sweet|
#   Sweet.create(name: sweet)
# end

vendor1 = Vendor.create(name:"Insomnia Cookies")
vendor2 = Vendor.create(name:"Cookies Cream")
vendor3 = Vendor.create(name:"Carvel")
vendor4 = Vendor.create(name:"Gregory's Coffee")
vendor5 = Vendor.create(name:"Duane Park Patisserie")
vendor6 = Vendor.create(name:"Tribeca Treats")

sweet1 = Sweet.create(name:"Chocolate Chip Cookie")
sweet2 = Sweet.create(name:"Chocolate Chunk Cookie")
sweet3 = Sweet.create(name:"M&Ms Cookie")
sweet4 = Sweet.create(name:"White Chocolate Cookie")
sweet5 = Sweet.create(name:"Brownie")
sweet6 = Sweet.create(name:"Peanut Butter Icecream Cake")


VendorSweet.create(price:89, vendor_id: vendor1.id, sweet_id: sweet1.id)
VendorSweet.create(price:99, vendor_id: vendor2.id, sweet_id: sweet2.id)
VendorSweet.create(price:69, vendor_id: vendor3.id, sweet_id: sweet3.id)
VendorSweet.create(price:59, vendor_id: vendor4.id, sweet_id: sweet4.id)
VendorSweet.create(price:79, vendor_id: vendor5.id, sweet_id: sweet5.id)
VendorSweet.create(price:49, vendor_id: vendor6.id, sweet_id: sweet6.id)
