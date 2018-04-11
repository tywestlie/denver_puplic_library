require_relative 'book'
class Author
  attr_reader :authors,
              :books
  def initialize(authors)
    @authors = authors
    @books = []
  end

  def add_book(title, date)
    new_book = Book.new(Hash.new)
    new_book.books[:author_first_name] = @authors[:first_name]
    new_book.books[:author_last_name] = @authors[:last_name]
    new_book.books[:title] = title
    new_book.books[:publication_date] = date
    @books << new_book
  end

end
