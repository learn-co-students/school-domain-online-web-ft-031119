# code here!
class School
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if roster.has_key?(grade)
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort()
    sorted_roster = {}
    roster.each do |key, students|
      puts "#{key}"
      sorted_roster[key] = students.sort
    end
    puts "#{sorted_roster}"
    sorted_roster
  end
end