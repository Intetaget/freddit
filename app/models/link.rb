class Link < ActiveRecord::Base
  validates_presence_of :user_id, :title
end
