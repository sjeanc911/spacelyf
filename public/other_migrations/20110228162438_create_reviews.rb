class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.integer :id
      t.string :review
      t.integer :space_id
      t.integer :user_id
      t.integer :image_id

      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
