require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save without a title and slug" do
  	post = Post.new
  	assert_not post.save
  end

  test "should not save invalid slugs" do
  	post = Post.new title: "Foo Bar", body: "The body", slug: "Foo Bar"
  	assert_not post.save
  end

  test "should populate the slug automatically" do
  	post = Post.new title: "Foo Bar", body: "bar"
  	assert post.save
  end
end
