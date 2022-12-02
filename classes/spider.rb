require_relative './animal'

class Spider < Animal
  def initialize(name, number_of_legs, net_strength_level)
    @net_strength_level = net_strength_level
    super(name, number_of_legs)
  end

  def make_a_net()
    puts 'make a net'
  end
end
