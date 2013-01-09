class AddsDepartmentIdToBoardsTable < ActiveRecord::Migration
  def self.up
    change_table :boards do |t|
      t.integer :department_id
    end
  end

  def self.down
    change_table :boards do |t|
      t.remove :department_id
    end
  end
end