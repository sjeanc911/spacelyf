class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :id
      t.string :firstname
      t.string :lastname
      t.integer :city_id
      t.string :email
      t.integer :country_id
      t.string :nickname
      t.integer :contact_no

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
