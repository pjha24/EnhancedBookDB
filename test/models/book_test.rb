require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @book = Book.new(name: "Harry Potter", genre: "fiction", author_id: 1)
  end
  test "same book and author should be invalid" do
    @invalid_book = @book.dup
    assert_not @invalid_book.valid?
  end

  test "book must have author_id" do
    @book.author_id = nil
    assert_not @book.valid?
  end
end
