require_relative 'book'
class Author
  attr_reader :authors,
              :books
  def initialize(authors)
    @authors = authors
    @books = []
  end

  def add_book(title, date)
    book = Book.new(Hash.new)
    book.books[:author_first_name] = @authors[:first_name]
    book.books[:author_last_name] = @authors[:last_name]
    book.books[:title] = title
    book.books[:publication_date] = date
    @books << book
  end
end
