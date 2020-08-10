require 'test_helper'

class BookTest < ActiveSupport::TestCase
  def setup
    @book = Book.new(name: "oliver", genre: "fiction", user_id: 1, author_id: 1)
  end
  
  test "book needs user_id" do
    @book.user_id = nil
    assert_not @book.valid?
  end
  test "book needs name" do
    @book.name = nil
    assert_not @book.valid?
  end

  test "book needs genre" do
    @book.genre = nil
    assert_not @book.valid?
  end
  test "book needs author_id" do
    @book.author_id = nil
    assert_not @book.valid?
  end
end
