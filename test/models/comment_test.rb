require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test "Cannot save without needed parameter" do
  	comment = Comment.create
  	refute comment.save
  	end
end
