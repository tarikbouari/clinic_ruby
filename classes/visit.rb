require_relative './animal'
require_relative './vet'

class Visit
  attr_reader :vet, :animal
  attr_accessor :date
  def initialize(date, vet, animal)
    @date = date
    @vet = vet
    vet.visits << self

    @animal = animal
    animal.visits.push(self)
  end
end
