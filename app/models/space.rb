class Space < ActiveRecord::Base

  belongs_to  :user
  has_many  :space_occupancy
  has_one   :space_info
  has_one   :space_classification
  has_many  :images
end
