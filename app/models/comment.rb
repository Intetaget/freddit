class Comment < ActiveRecord::Base
  belongs_to :links
  belongs_to :user

#validates_presence_of :content, :post_id  TITLES CONTENT AND POSTID WILL NEED TO BE CHANGED

end
