# code here!
class School
  attr_accessor :school_name, :roster


  def initialize(school_name)
    @school_name =school_name
    @roster = {}
  end

  def add_student(student, grade)
    @student = student
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grades)
    roster.detect do |x, y|
      if x == grades
        return y
      end
    end
  end

  def sort
    new_hash = {}
    roster.each do |x, y|
      new_hash[x] = y.sort
    end
    new_hash
  end

end
