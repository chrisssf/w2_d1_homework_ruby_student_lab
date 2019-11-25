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

  def test_set_student_name
    student = Student.new("Jimmy", "E36")
    student.set_student_name("Bob")
    assert_equal("Bob", student.get_student_name())
  end










end
