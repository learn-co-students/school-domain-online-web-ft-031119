# code here!
class School
  attr_accessor :name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_hash = {}
    roster.each do |grade, students|
      sorted_hash[grade] = students.sort
    end
    sorted_hash
  end

end
