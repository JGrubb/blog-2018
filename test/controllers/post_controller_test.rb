require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  # test "should get create" do
  #   get post_create_url
  #   assert_response :success
  # end

  test "should get edit" do
    get edit_post_url(1)
    assert_response :success
  end
  #
  # test "should get update" do
  #   get post_update_url
  #   assert_response :success
  # end

  test "should get show" do
    get post_url(1)
    assert_response :success
  end

  # test "should get delete" do
  #   get post_delete_url
  #   assert_response :success
  # end

end
