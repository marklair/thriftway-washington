class AddPositionToBoards < ActiveRecord::Migration
  def self.up
    change_table :boards do |t|
      t.integer :position
    end
  end

  def self.down
    change_table :boards do |t|
      t.remove :position
    end
  end
end