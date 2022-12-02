require_relative './owner'
require_relative './visit'
require_relative './owner'

class Animal
  attr_accessor :visits, :id, :name, :number_of_legs, :type

  def initialize(name, number_of_legs)
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @visits = []
    @type = 'dog'
    @owner = 'none'
  end

  def remove_leg(number)
    @number_of_legs -= number
  end

  def can_speak
    @type == dog
  end

  def add_visit(visit)
    @visits << visit
  end

  def owner=(owner)
    @owner = owner
    owner.animals.push(self) unless owner.animals.include?(self)
  end
end
