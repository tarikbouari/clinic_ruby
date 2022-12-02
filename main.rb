require_relative './app'
def welcome
  puts "Welcome to the vets clinic App. \n ---------------------------------------------------"
  puts 'Please choose an option by entering a number'
  puts '1. List all vet'
  puts '2. List all animal'
  puts '3. Create an animal'
  puts '4. Create a vet'
  puts '5. Create a visit'
  puts '6. List all visit for a given vet id'
  puts '7. Exit'
end

def main
  loadapp = App.new
  loadapp.start
end

main
