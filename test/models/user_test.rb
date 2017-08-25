require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
      @user = User.new(name: "xiaohong", email:"xiaohong@motie.com", password: "liang", password_confirmation: "liang")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "should be present" do 
      @user.name = "   "
      assert_not @user.valid?
  end

  test "email should be uniq" do 
      dump_user = @user.dup
      @user.save
      assert_not dump_user.valid?
  end
end
