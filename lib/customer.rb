class Customer
  attr_reader :name, :age 
  @@all = []
  
  def initialize(name, age)
    @name = name 
    @age = age 
    @@all.push(self)
  end 
  
  def self.all
    @@all
  end 
  
  def new_meal(waiter, total, tip)
    new_meal = Meal.new(waiter, self, total, tip)
  end 
end