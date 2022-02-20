class AdaptableClass
  def incorrect_string
    'амиД тувоз янем ,тевирП'
  end
end

class AdaptedClass
  def initialize(adapter)
    @adapter = adapter
  end

  def correct_string
    @adapter.reverse_string
  end
end

class Adapter
  def initialize(adaptable_object)
    @adaptable_object = adaptable_object
  end

  def reverse_string
    @adaptable_object.incorrect_string.reverse!
  end
end

adaptable_object = AdaptableClass.new
adapter = Adapter.new(adaptable_object)
adapted_object = AdaptedClass.new(adapter)

puts adapted_object.correct_string
