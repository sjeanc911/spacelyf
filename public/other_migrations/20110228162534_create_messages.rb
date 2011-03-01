class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.integer :id
      t.integer :sender_id
      t.id :receiver
      t.string :message

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
