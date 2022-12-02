
module FunctionAnimal
  # create a function to add animal
  def create_animal(animal_arr)
    puts "----------------------------------------------\n Choose 1 to add a Dog /  2 for Spider"
    option = gets.chomp.to_i

    case option
    when 1
      create_dog(animal_arr)
    when 2
      create_spider(animal_arr)
    else
      puts 'invalid choice'
    end
  end

  def create_dog(animal_arr)
    puts 'Enter dog name'
    name = gets.chomp.to_s

    puts 'Enter color'
    color = gets.chomp.to_s

    puts 'Enter number of leg'
    number_of_legs = gets.chomp.to_i

    dog = Dog.new(name, number_of_legs, color)
    animal_arr << dog
    puts "dog created successfully \n -----------------------"
  end

  def create_spider(animal_arr)
    puts 'Enter spider name'
    name = gets.chomp.to_s

    puts 'Enter net strength level'
    net_strength = gets.chomp.to_i

    puts 'Enter number of leg'
    number_of_legs = gets.chomp.to_i

    spider_objet = Spider.new(name, number_of_legs, net_strength)
    animal_arr << spider_objet
    puts 'Spider created successfully \n ----------------------------'
  end

  # create a function to add animal
  def list_animal(animal_arr)
    puts 'List of animal -----------------------'
    if animal_arr.length.zero?
      puts 'There no animals to list. Add a animal'
      create_animal
    else
      animal_arr.each_with_index do |animal, index|
        puts "#{index} -- name : #{animal.name} -- number of leg : #{animal.number_of_legs} "
      end
    end
  end
end
