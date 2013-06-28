class AddTypeFieldToMessages < ActiveRecord::Migration
  def self.up
    add_column :messages, :message_type, :string, :null => false, :default => 'contact'
  end

  def self.down
    remove_column :messages, :message_type
  end
end
