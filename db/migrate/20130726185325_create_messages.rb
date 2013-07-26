class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :message_topic_id
      t.text :content
      t.references :message_topic

      t.timestamps
    end
    create_table :message_topics do |t|
      t.string :name
      t.string :forwarding_address
    end
    add_index :messages, :message_topic_id
  end
end
