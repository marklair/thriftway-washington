class CreatesBoardProjectsTable < ActiveRecord::Migration
  def self.up
    create_table :boards_projects, :id => false, :force => true do |t|
      t.integer :board_id
      t.integer :project_id
      t.timestamps
    end
  end

  def self.down
    drop_table :boards_projects
  end
end