class CreateSpaceInfos < ActiveRecord::Migration
  def self.up
    create_table :space_infos do |t|
      t.integer :id
      t.integer :space_id
      t.string :description
      t.float :loc_y_coordinate
      t.float :loc_x_coordinate

      t.timestamps
    end
  end

  def self.down
    drop_table :space_infos
  end
end
