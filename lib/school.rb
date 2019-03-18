# code here!
class School 
  attr_reader :name, :roster 
  
  def initialize(name)
    @name = name 
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] = [] unless @roster.has_key?(grade)
    @roster[grade] << student 
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    @roster.map do |key, value|
      @roster[key] = value.sort 
    end
    @roster
  end
end