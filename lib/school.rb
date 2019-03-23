class School
  def initialize(name)
    @name = name
  end

  roster = {}

  def add_student(name, grade)
    roster[name] = []
    roster[name] << grade
    roster => {name => [grade]}
  end
end
