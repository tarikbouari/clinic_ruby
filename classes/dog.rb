require_relative './animal'

class Dog < Animal
  attr_accessor :color
  def initialize(name, number_of_legs, color)
    super(name, number_of_legs)
    @color = color
  end

  def bring_a_stick
    puts 'bring a stick'
  end
end
