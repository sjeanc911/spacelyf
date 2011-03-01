class CreateSpaceOccupancies < ActiveRecord::Migration
  def self.up
    create_table :space_occupancies do |t|
      t.integer :id
      t.integer :space_id
      t.datetime :checkin_date
      t.datetime :checkout_date
      t.integer :current_occupant

      t.timestamps
    end
  end

  def self.down
    drop_table :space_occupancies
  end
end
