class User < ActiveRecord::Base
  has_many :links
  
  validates_presence_of :email, :password
  validates_length_of :password, minimum: 7
  validates_uniqueness_of :email
end
