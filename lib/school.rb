# code here!
require "pry"
class School

  def initialize(name)
    @name=name
    @roster={}
  end

  attr_accessor :roster

  def add_student(name, grade)
    if !@roster.has_key?(grade)
      @roster[grade]=[]
    end
    # if !@roster[grade].include?(name)
    @roster[grade]<<name
  end

  def grade(grade_num)
    @roster.each do |key, value|
      if key==grade_num
        return value
      end
    end
  end

  def sort
    @roster.each do |key, value|
      @roster[key]=value.sort
    end
    @roster
  end

end
