require('minitest/autorun')
require('minitest/reporters')
require_relative('../student_class')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudentClass < MiniTest::Test


  def test_get_student_name
    student = Student.new("Jimmy", "E36")
    assert_equal("Jimmy", student.get_student_name())
  end

  def test_get_student_cohort
    student = Student.new("Jimmy", "E36")
    assert_equal("E36", student.get_student_cohort)
  end

  def test_set_student_name_and_cohort
    student = Student.new("Jimmy", "E36")
    student.set_student_name_and_cohort("Bob", "E30")
    assert_equal("Bob", student.get_student_name)
    assert_equal("E30", student.get_student_cohort)
  end

  def test_student_can_talk
    student = Student.new("Jimmy", "E36")
    assert_equal("I can talk!", student.student_can_talk("I can talk!"))
  end

  def test_student_favourite_language
    student = Student.new("Jimmy", "E36")
    assert_equal("I love Ruby", student.student_favourite_language("Ruby"))
  end







end
