class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :storenumber
      t.string :unified
      t.string :storename
      t.string :adgroup
      t.string :url
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.integer :sort

      t.timestamps
    end
  end
end
