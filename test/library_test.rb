require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/library'
require './lib/author'
require './lib/book'

class LibraryTest < Minitest::Test

  def test_library_exists
    dpl = Library.new

    assert_instance_of Library, dpl
  end

  def test_add_to_collection
    dpl = Library.new
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    expected = dpl.add_to_collection(jane_eyre)
    assert_instance_of Book, expected.first.first
  end

  def test_add_multiple_to_collection
    dpl = Library.new
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    villette  = charlotte_bronte.add_book("Villette", "1853")

    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")

    dpl.add_to_collection(jane_eyre)
    dpl.add_to_collection(villette)
    dpl.add_to_collection(mockingbird)

    expected = dpl.books

    require 'pry'; binding.pry

    assert_equal "Jane Eyre", expected[0][0].title
    assert_equal "Villette", expected[0][1].title
    assert_equal "To Kill a Mockingbird", expected[2][0].title
  end


end
