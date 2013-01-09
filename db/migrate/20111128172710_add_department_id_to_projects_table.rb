class AddDepartmentIdToProjectsTable < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.integer :department_id
    end
  end

  def self.down
    change_table :projects do |t|
      t.remove :department_id
    end
  end
end