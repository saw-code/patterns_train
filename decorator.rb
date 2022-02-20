class Burger
  attr_accessor :price

  def price
    2.50
  end
end

class BurgerWithChees
  def initialize(burger)
    @burger = burger
  end

  def price
    @burger.price += 0.50
  end
end

class BurgerWithTomato
  def initialize(burger)
    @burger = burger
  end

  def price
    @burger.price += 0.25
  end
end

burger = Burger.new
chees_burger = BurgerWithChees.new(burger)
burger_with_tomato = BurgerWithTomato.new(burger)

puts chees_burger.price
puts burger_with_tomato.price
