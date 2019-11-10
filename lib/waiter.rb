class Waiter
  attr_reader :name, :yrs_exp
  @@all = []

  def initialize(name, yrs_exp)
    @name = name 
    @yrs_exp = yrs_exp
    @@all.push(self)
  end 
  
  def self.all
    @@all
  end 
  
  def new_meal(customer, total, tip)
    new_meal = Meal.new(self, customer, total, tip)

end