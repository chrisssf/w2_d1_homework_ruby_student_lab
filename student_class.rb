class Student

  def initialize(name, cohort)
    @student_name = name
    @student_cohort = cohort
  end

  def get_student_name
    @student_name
  end

  def get_student_cohort
    @student_cohort
  end

  def set_student_name(name)
    @student_name = name
  end

end
