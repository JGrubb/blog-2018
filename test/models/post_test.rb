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
  	post = Post.create title: "Foo Bar", body: "bar"
    assert_equal "foo-bar", post.slug
  end

  test "should create tags if needed" do
    Tag.find_each &:destroy
    post = Post.new title: "foo", body: "bar"
    post.tags << Tag.find_or_create_by(name: "Tag thing")
    post.save
    assert_equal 1, Tag.all.count
  end

  test "published scope should just return published items" do

  end

end
