require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save without a title and slug" do
  	post = Post.new title: "Foo"
  	assert_not post.save
  end

  test "should not save invalid slugs" do
  	post = Post.new title: "Foo Bar", body: "The body", slug: "Foo Bar"
  	assert_not post.save
  end

  test "should populate the slug automatically" do
  	post = Post.create title: "Foo Bar", body: "bar"
    assert_equal "foo-bar", post.slug
  end
end