require 'test_helper'

class SessionsHelperTest < ActionView::TestCase

    def setup
        @user = users(:one)
        remember(@user)
    end

    test "user log in is current user" do
        assert_equal @user, current_user
        assert is_logged_in?
    end

    test "change digest check current_user is nil" do
        @user.update_attribute(:remember_digest, User.digest(User.new_token))
        assert_nil current_user
    end

end
