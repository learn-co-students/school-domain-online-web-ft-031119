class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, age)
    # @roster[age] = [] unless @roster[age]
    @roster[age] ||= []
    @roster[age] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each{|grade, students|
      @roster[grade] = students.sort
    }
  end
end