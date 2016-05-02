module Cursable
  def curse(anyobject)
    puts "A curse has been placed on #{anyobject}"
  end
end

class CustomClass

  include Cursable
  attr_accessor :name, :ship

  def initialize(name, ship)
    @name = name
    @ship = ship
  end

  def welcome
    puts "\nhey! I'm #{@name}, nice to meet ya"
    puts "I sail the seven seas aboard the #{@ship}"
  end

  def getter_method
    @name
  end

  def setter_method(name)
    @name = name
  end

  def self.class_method
    puts "\n\nI'm a class method, savvy?"
  end
end

class_object = CustomClass.new("Jack", "Black Pearl")


puts "\nwe created the memory space for this object, but we have not done anything with it yet. try using puts class_object."

puts class_object

puts "\nif you run the program again you will see a different space in memory because once use end the program, the lifecycle of the object is over."

class_object.welcome
puts class_object.getter_method
class_object.setter_method("Captain Jack")
puts class_object.getter_method

puts "\n\nruby makes it really easy to do getter and setter methods because it is so common. let's explore another way of doing them."
puts "\nyou can use attr_accessor :name to create both the getter and setter methods for name"



puts "\n\nlet's talk about subclasses, a subclass is a class is created from another more encompassing class. we will use CustomClass.ancestors to see what our CustomClass is a subclass of"

puts "\n#{CustomClass.ancestors}"

class Pirate < CustomClass
end

class NavalOfficer < CustomClass
  def welcome
    puts "\nI'm #{@name}, and I love Elizabeth Swann"
  end
end

class Civilian < CustomClass

  def welcome
    puts "\nI'm #{@name}, and I love Elizabeth Swann"
  end
end

pirate = Pirate.new("Jack Sparrow", "Black Pearl")

officer = NavalOfficer.new("James Norrington", "HMS Interceptor")

civilian = Civilian.new("Will Turner", "...wait a minute! I don't sail any seas aboard anything.")

pirate.welcome
officer.welcome
civilian.welcome

CustomClass.class_method

civilian.curse(pirate.name)
