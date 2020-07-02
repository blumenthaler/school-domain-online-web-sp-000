# code here!

class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort(grade)
    sort_hash = {}
     #sorted list of all the students, strings in student arrays are alphabetical
    # sort each grade array alphabetically
    @roster[grade].sort.each do |grade, name_array|
      sort_hash[grade] = (name_array.sort)
    end
    sort_hash
  end
  
end