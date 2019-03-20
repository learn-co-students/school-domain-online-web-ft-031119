# code here!

class School
  attr_reader :roster, :name
  
  
  def initialize(name)
    @name=name
    @roster={}
  end
  
  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade]=[name]
    end
  end
  
  def grade(n)
    @roster[n]
  end
  
  def sort
    sorted_h={}
    @roster.each {|grade, names|
      sorted_h[grade]=names.sort
    }
    sorted_h
  end
  
end