class Waiter
  attr_reader :name, :yrs_exp
  @@all = []

  def initialize(name, yrs_exp)
    @name = name 
    @yrs_exp = yrs_exp
    @@all.push(self)
  end 

end