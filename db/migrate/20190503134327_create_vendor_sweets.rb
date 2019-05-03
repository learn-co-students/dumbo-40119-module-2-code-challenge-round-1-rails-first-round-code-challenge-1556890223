class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.integer :price
      t.belongs_to :vendor
      t.belongs_to :sweet

      t.timestamps
    end
  end
end
