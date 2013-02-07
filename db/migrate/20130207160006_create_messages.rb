class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company
      t.text :content

      t.timestamps
    end
  end
end
