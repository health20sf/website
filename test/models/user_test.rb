require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "Laird Hamilton", email: "stoked@peahi.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = nil
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = nil
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "j" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 247 + "@peahi.com"
    assert_not @user.valid?
  end
end

