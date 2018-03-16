require 'test_helper'

class TagTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "the tag must have a name" do
    tag = Tag.new
    assert_not tag.save
  end

  test "the tag should generate its own slug" do
    tag = Tag.create name: "Foo Bar"
    assert_equal "foo-bar", tag.slug
  end

  test "slug generation should format things correctly" do
    tag = Tag.create name: "Foo Bar 6 ? /"
    assert_equal "foo-bar-6", tag.slug
  end

end
