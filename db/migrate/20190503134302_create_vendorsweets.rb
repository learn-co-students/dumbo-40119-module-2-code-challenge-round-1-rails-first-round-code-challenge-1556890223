class CreateVendorsweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendorsweets do |t|
      t.integer :price
      t.belongs_to :vendor_id
      t.belongs_to :sweet_id

      t.timestamps
    end
  end
end
