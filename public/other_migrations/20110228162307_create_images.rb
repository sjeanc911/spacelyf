class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.integer :id
      t.string :caption
      t.string :url
      t.integer :space_id

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
