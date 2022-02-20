class SingleClass
  @instance = SingleClass.new

  private_class_method :new

  def self.single_method
    @instance
  end
end

config = SingleClass.single_method

p config
