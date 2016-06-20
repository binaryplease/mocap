require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	def setup
		@user = User.new(username: "Example User", password: "secret", password_confirmation: "secret")
	end

	test "should be valid" do
		assert @user.valid?
	end
end
