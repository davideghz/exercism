class School
  def initialize
    @students = Hash.new
  end

  def students(grade)
    @students.select { |key, value| value == grade }.keys.sort
  end

  def add(name, grade)
    @students[name] = grade
  end

  def students_by_grade
    all_grades = @students.values.uniq.sort
    results = []

    all_grades.each_with_index {
      |elem, index| results << {:grade => elem, :students => students(elem)}
    }

    return results
  end
end

module BookKeeping
  VERSION = 3
end
