class Comment < ActiveRecord::Base
  belongs_to :links
  belongs_to :user

  validates_presence_of :link_id, :user_id, :body

end
