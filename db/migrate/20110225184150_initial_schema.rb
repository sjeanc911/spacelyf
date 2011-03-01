class InitialSchema < ActiveRecord::Migration
  def self.up
    
    create_table :users do |t|
      t.string 	 :firstname,	:default => "",	  :null	=> false,   :limit => 128	
      t.string 	 :lastname,	:default => "",   :null => false,   :limit => 128
      t.string 	 :nickname,	:default => "",	  :null => false,   :limit => 128
      t.string 	 :email,	:default => "",	  :null => false,   :limit => 128
      t.string   :contact_no,	:default => "",   :null => false,   :limit => 128
      t.integer  :city_id,	:default => 0,	  :null	=> false
      t.integer  :country_id,	:default => 0,	  :null => false
      
      t.timestamps
    end    
   
    create_table :accounts do |t|
      t.integer  :person_id,	:default => 0,	  :null => false
      t.string 	 :login,        :default => "",	  :null => false,   :limit => 64
      t.string 	 :password

      t.timestamps
    end   
   
    create_table :spaces do |t|
      t.string 	 :code,			:default => "",	  :null => false
      t.integer	 :classification_id, 	:default => 0, 	  :null => false

      t.timestamps
    end
    
    create_table :space_infos do |t|
      t.integer  :space_id,		:default => 0,	  :null => false   
      t.string 	 :description,   	:default => "",   :null => false
      t.float 	 :loc_y_coordinate, 	:default => 0.0,  :null => false
      t.float 	 :loc_x_coordinate, 	:default => 0.0,  :null => false

      t.timestamps
    end
    
    create_table :space_classifications do |t|
      t.string 	 :classification, 	:default => "",	  :null => false	
      t.string 	 :code,			:default => "",	  :null => false

      t.timestamps
    end        

    create_table :countries do |t|
      t.string 	 :country,		:default => "",	  :null => false
      t.string 	 :code,			:default => "",   :null => false

      t.timestamps
    end
    
    create_table :images do |t|
      t.string 	 :caption,		:default => "",	  :null => false
      t.string 	 :url,			:default => "",	  :null => false
      t.integer  :space_id,		:default => 0,	  :null	=> false

      t.timestamps
    end
    
    create_table :reviews do |t|
      t.integer  :user_id,		:default => 0,	  :null => false
      t.integer  :space_id,		:default => 0, 	  :null => false
      t.integer  :image_id,		:default => 0,	  :null => false
      t.string 	 :review,		:default => "",	  :null => false

      t.timestamps
    end
    
    create_table :messages do |t|
      t.integer  :sender_id,		:default => 0,	  :null => false
      t.integer  :receiver_id,		:default => 0, 	  :null => false
      t.string 	 :message,		:default => "",	  :null => false		

      t.timestamps
    end
    
    create_table :space_occupancies do |t|
      t.integer  :space_id,	       :default => 0,	  :null => false
      t.datetime :checkin_date,	       :default => "0000-00-00 00:00:00", :null => false
      t.datetime :checkout_date,       :default => "0000-00-00 00:00:00", :null => false
      t.integer  :current_occupant,    :default => 0,	  :null => false

      t.timestamps
    end
    
    create_table :amenities do |t|
      t.string 	 :name,			:default => "",	  :null => false
      t.string 	 :code,			:default => "",	  :null => false			

      t.timestamps
    end
    
    create_table :space_amenities do |t|
      t.integer  :space_id,		:default => 0,	  :null => false	  
      t.integer  :amenity_id,		:default => 0,	  :null => false

      t.timestamps
    end
                 
  end

  def self.down
    drop_table  :users
    drop_table  :accounts
    drop_table  :spaces
    drop_table  :space_infos
    drop_table  :space_classifications
    drop_table  :countries
    drop_table  :images
    drop_table  :reviews
    drop_table  :messages
    drop_table  :space_occupancies
    drop_table  :amenities
    drop_table  :space_amenities
  end
end
