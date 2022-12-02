require_relative 'visit'

class Vet
  def initialize(name, adress)
    @id = Random.rand(1..1000)
    @name = name
    @adress = adress
    @visits = []
  end

  def add_visit(visit)
    @visits << visit
  end
end
