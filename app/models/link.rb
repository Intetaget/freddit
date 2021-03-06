class Link < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates_presence_of :user_id, :title
end
