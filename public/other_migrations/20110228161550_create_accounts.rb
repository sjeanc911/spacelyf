class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.integer :id
      t.integer :person_id
      t.string :login
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
