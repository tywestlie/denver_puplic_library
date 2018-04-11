require './test/test_helper'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test

  def test_exist
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_instance_of Author, charlotte_bronte
  end

  def test_books_is_an_empty_array
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal [], charlotte_bronte.books
  end

  def test_add_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    charlotte_bronte.add_book("Villette", "1853")

    assert_instance_of Book, charlotte_bronte.books.first
    assert_equal "Jane Eyre", charlotte_bronte.books[0].title
    assert_equal "Villette", charlotte_bronte.books[1].title
  end
end
