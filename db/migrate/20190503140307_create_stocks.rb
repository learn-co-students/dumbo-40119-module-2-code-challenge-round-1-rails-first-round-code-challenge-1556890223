class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.belongs_to :sweet, foreign_key: true
      t.belongs_to :vendor, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
