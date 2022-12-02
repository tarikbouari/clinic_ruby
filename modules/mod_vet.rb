module FunctionVet
  def create_vet(vets_arr)
    puts 'Enter the vet name'
    name = gets.chomp.to_s

    puts 'Enter the vet adress'
    adress = gets.chomp.to_s

    vet = Vet.new(name, adress)
    vets_arr << vet
    puts vets_arr
    puts 'vet sucessfully created'
  end

  def list_vet(vets_arr)
    if vets_arr.length.zero?
      puts 'there is no vet. Please add a vet'
      create_vet(vets_arr)
    else
      puts vets_arr
      vets_arr.each_with_index do |index, vet|
        puts " index:#{index} -- name : #{vet.name} -- adress: #{vet.adress}"
      end
    end
  end
end
