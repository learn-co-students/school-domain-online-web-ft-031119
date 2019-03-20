require "pry"
class School 
  attr_accessor :roster
  
  def initialize(name)
    @name=name 
    @roster= {}
  end 
  
  def add_student(name,grade)
    @name=name
    @grade=grade 
      if @roster.has_key? grade 
          @roster[grade]<< name
        else 
        @roster[grade]=[]
        @roster[grade]<< name 
      end 
  end 
  
  def grade(grade)
      @grade= @roster[grade]
  end 
  
  def sort 
     sorted={}
      @roster.each do |grade,name|  
        sorted[grade]=name.sort
      end 
    sorted 
  end 
end