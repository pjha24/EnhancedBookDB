require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  def setup
    @relationship = Relationship.new(book_id: 1, user_id: 1) 
  end
  test "book_id presence required " do
    @relationship.book_id = nil
    assert_not @relationship.valid?
  end

  test "user_id presence required " do
    @relationship.user_id = nil
    assert_not @relationship.valid?
  end
  
  test "book_id must be unique" do
    @invalid_relatinship = Relationship.new(book_id: 1, user_id: 2)
    assert_not @invalid_relatinship.valid?
  end
end
