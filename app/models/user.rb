class User < ActiveRecord::Base

  has_one   :account
  has_many  :space
  has_many  :message
end
