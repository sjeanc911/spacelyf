class CreateSpaces < ActiveRecord::Migration
  def self.up
    create_table :spaces do |t|
      t.integer :id
      t.string :code
      t.integer :classification_id
      t.datetime :created_on
      t.datetime :deleted_on

      t.timestamps
    end
  end

  def self.down
    drop_table :spaces
  end
end
