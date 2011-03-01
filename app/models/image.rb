class Image < ActiveRecord::Base

  belongs_to  :space
  has_many    :review
end
