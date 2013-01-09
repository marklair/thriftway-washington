class AddRealNameToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.string :real_name
    end
  end

  def self.down
    change_table :users do |t|
      t.remove :real_name
    end
  end
end