require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test "Cannot save without needed parameter" do
  	user = User.new
  	assert_not user.save
  	end
end
