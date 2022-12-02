require_relative './classes/animal'
require_relative './classes/dog'
require_relative './classes/owner'
require_relative './classes/spider'
require_relative './classes/visit'
require_relative './classes/vet'
require_relative './modules/mod_animal'
require_relative './modules/mod_vet'

class App
  include FunctionAnimal
  include FunctionVet
  def initialize
    @animal_arr = []
    @vets_arr = []
  end

  def option
    puts 'Enter your choice '
    choice = gets.chomp.to_i

    case choice
    when 1
      puts @vets_arr
      list_vet(@vets_arr)
    when 2
      list_animal(@animal_arr)
    when 3
      create_animal(@animal_arr)
    when 4
      create_vet(@vets_arr)
    when 5
      create visit
    when 6
      list_visit
    when 7
      exit
    else
      puts 'Invalide choice'
    end
  end

  def start
    loop do
      welcome
      option
    end
  end
end
