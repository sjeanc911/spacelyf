class CreateSpaceAmenities < ActiveRecord::Migration
  def self.up
    create_table :space_amenities do |t|
      t.integer :id
      t.integer :space_id
      t.integer :amenity_id

      t.timestamps
    end
  end

  def self.down
    drop_table :space_amenities
  end
end
