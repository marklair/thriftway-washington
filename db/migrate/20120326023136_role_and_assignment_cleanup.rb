class RoleAndAssignmentCleanup < ActiveRecord::Migration
def self.up
    drop_table :roles
    drop_table :assignments
    remove_column :users, :role
  end

  def self.down
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
  end
end

