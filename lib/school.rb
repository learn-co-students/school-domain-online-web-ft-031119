class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(name, level)
    roster[level] ||= []
    roster[level] << name
  end
  
  def grade(level)
    roster.each do |x, y|
      if x == level 
        return y 
      end 
    end 
  end 
  
  def sort
    new_array = {}
    roster.each do |x, y|
      new_array[x] = y.sort 
    end 
    new_array
  end
  
end 