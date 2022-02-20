class CarFactory
  def initialize(car_factory)
    @car_factory = car_factory
  end

  def start!
    @car_factory.new_engine
    @car_factory.new_wheel
  end
end

class AudiFactory
  def new_engine
    VagEngine.new
  end

  def new_wheel
    AudiWheel.new
  end
end

class MercedesFactory
  def new_engine
    MercedesEngine.new
  end

  def new_wheel
    CoolWheel.new
  end
end

audi_factory = AudiFactory.new
new_audi = CarFactory.new(audi_factory)

new_audi.start!
