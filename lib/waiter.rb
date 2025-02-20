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
  
  def meals
    Meal.all.select {|meal| meal.waiter == self}
  end 
  
  def best_tipper
    best_tipper = meals.max {|meal_a, meal_b| meal_a.tip <=> meal_b.tip}
    best_tipper.customer
  end 
end