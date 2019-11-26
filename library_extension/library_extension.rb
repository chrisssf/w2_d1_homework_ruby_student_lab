class Library

  def initialize(books)
    @books = books
  end


  def get_books
    return @books
  end

  def rental_details_by_title(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end

  def add_book_by_title(title)
    new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)
  end

  def update_rental_details(title, student_name, due_date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = student_name
        book[:rental_details][:date] = due_date
        return book[:rental_details]
      end
    end
  end


end
