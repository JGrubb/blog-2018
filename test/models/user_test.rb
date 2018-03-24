require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should have a password" do
    user = User.new(email: "foo@bar.com").save
    assert_not user, "User has to have a password"
  end

  test "password shouldn't be too short" do
    user = User.new(email: "foo@bar.com", password: "foo").save
    assert_not user, "Pass fails because too short"
  end

  test "password shouldn't be too long" do
    user = User.new(email: "foo@bar.com", password: "foobar" * 12).save
    assert_not user, "Pass fails because too long"
  end

  test "password should be just right" do
    user = User.new(email: "foo@bar.com", password: "a_nice_respectable_password").save
    assert user, "good job billy"
  end

end
