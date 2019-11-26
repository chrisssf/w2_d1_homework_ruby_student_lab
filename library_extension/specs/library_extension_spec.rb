require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../library_extension')

class TestLibrary < Minitest::Test

  def test_get_books
    library1 = Library.new([{
      title: "Lord of the Rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    }])
    assert_equal([{
      title: "Lord of the Rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    }], library1.get_books)
  end

  def test_rental_details_by_title
    library1 = Library.new([{
      title: "Lord of the Rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    }])
    assert_equal({
     student_name: "Jeff",
     date: "01/12/16"
    }, library1.rental_details_by_title("Lord of the Rings"))
  end

  def test_add_book_by_title
    library1 = Library.new([{
      title: "Lord of the Rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    }])
    library1.add_book_by_title("Harry Potter")
    assert_equal(2, library1.get_books.length)
  end

  def test_update_rental_details
    library1 = Library.new([{
      title: "Lord of the Rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    }])
    library1.update_rental_details("Lord of the Rings", "Davey", "28/11/19")
    assert_equal({
       student_name: "Davey",
       date: "28/11/19"
    }, library1.rental_details_by_title("Lord of the Rings"))
  end

end
