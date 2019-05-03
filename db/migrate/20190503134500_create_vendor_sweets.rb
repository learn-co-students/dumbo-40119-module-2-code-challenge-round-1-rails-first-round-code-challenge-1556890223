class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.belongs_to :sweet, foreign_key: true
      t.belongs_to :vendor, foreign_key: true
      t.float :price_sold

      t.timestamps
    end
  end
end
