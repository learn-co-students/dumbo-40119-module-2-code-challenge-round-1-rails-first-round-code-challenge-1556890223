class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.timestamps
    end
  end
end


# rails g resource Giver name:string location:string — no-test-fr