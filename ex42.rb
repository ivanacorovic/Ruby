class Animal
end

class Dog < Animal
  def initialize (name)
    @name=name
  end
end

class Cat < Animal
  def initialize (name)
    @name=name
  end
end

class Person
  def initialize (name)
    @name=name
    @pet=nil
  end
  attr_accessor :pet
end

class Employee < Person
  def initialize (name, salary)
    super(name)
    @salary=salary
  end
end

class Fish
   def initialize (name)
    @name=name
   end
end

class Salmon < Fish
  def initialize (name, water)
    super(name)
    @water=water
end
def pliva(drug)
  puts "Ribe #{name} i #{drug} plivaju zajedno. Voda je #{water}."
end
# def name
#   @name
# end

# def name=(val)
#   @name=val
# end

attr_accessor :name, :water
end

class Halibut < Fish
end

rover=Dog.new("Rover")
satan=Cat.new("Satan")
mary=Person.new("Mary")
mary.pet=satan
frank=Employee.new("Frank", 120000)
frank.pet=rover

flipper=Fish.new("Flipper")
harry=Salmon.new("Harry", "slana")
miley=Halibut.new("Miley")
sally=Salmon.new("Sally", "slana")
harry.pliva(sally.name)

