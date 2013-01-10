class CreateRolesAndAssignments < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.timestamps
    end
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :role_id

      t.timestamps
    end
    add_column :users, :role, :string
    add_column :users, :roles_mask, :integer
  end

  def self.down
    drop_table :roles
    drop_table :assignments
    remove_column :users, :role
    remove_column :users, :roles_mask
  end
end

