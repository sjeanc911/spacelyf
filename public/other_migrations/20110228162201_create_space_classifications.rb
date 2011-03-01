class CreateSpaceClassifications < ActiveRecord::Migration
  def self.up
    create_table :space_classifications do |t|
      t.integer :id
      t.string :classification
      t.string :code

      t.timestamps
    end
  end

  def self.down
    drop_table :space_classifications
  end
end
