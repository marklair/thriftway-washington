class CreateMessageTopics < ActiveRecord::Migration
  def change
    create_table :message_topics do |t|
      t.string :name
      t.string :forwarding_address

      t.timestamps
    end
  end
end
