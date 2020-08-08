require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  def setup
    @author = Author.new(name: "William Shakes", bio: "Will was a great man")
  end
  test "name should be present" do
    @author.name = ""
    assert_not @author.valid?
  end

  test "bio needs to be present" do
    @author.bio = "   "
    assert_not @author.valid?
  end
  test "max length of name is 50 characters" do
    @author.name = "a" * 52
    assert_not @author.valid?
  end

  test "max length of bio is 255 characters" do
    @author.bio = "a" * 256
    assert_not @author.valid?
  end

  test "name should be unique and case insensitive" do
    @invalid_author = @author.dup
    @invalid_author.name = @author.name.upcase
    @author.save
    assert_not @invalid_author.valid?
  end

  
end
