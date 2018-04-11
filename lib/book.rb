class Book
  attr_reader :books

  def initialize(books)
    @books = books
  end

  def author_first_name
    @books[:author_first_name]
  end

  def author_last_name
    @books[:author_last_name]
  end

  def title
    @books[:title]
  end

  def publication_date
    @books[:publication_date].split.last
  end
end
