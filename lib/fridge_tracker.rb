require_relative '../config/environment'
require_relative '../app/models/fridge'

#Initial Pompt
puts "Enter an option:"

## Options:
puts "A) List all Fridges"
puts "B) Add A Fridge"
puts "C) Delete A Fridge"
puts "D) List All Food in A Fridge Of Your Choice"
puts "E) Add A Food Item To A Fridge Of Your Choice"
puts "F) Eat (Delete) A Food Item From A Fridge Of Your Choice"
puts "G) List All Drinks in A Fridge Of Your Choice"
puts "H) Add A Drink Item To A Fridge Of Your Choice"
puts "I) Consume PART Of A Food Item From A Fridge Of Your Choice (Update Size In Ounces)"
puts "J) Consume ALL Of A Drink Item From A Fridge Of Your Choice (Delete It)"
## END Options

option = gets.chomp
puts "You selected #{option}"

### Option A) List all Fridges
if option.upcase == 'A'
  puts Fridge.all.to_s
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts fridge.brand.to_s
    puts fridge.size.to_s
    puts "___ ___ ___"
  end
end
### END Option A

### Option B) Add A Fridge
if option.upcase == 'B'
  puts "What is this fridge's location?"
  Fridge_location = gets.chomp 
  puts "What is brand"
  Fridge_brand = gets.chomp   
  puts "What is size"
  Fridge_size = gets.chomp 
  Fridge.create do |fridge|
    fridge.location = Fridge_location
    fridge.brand = Fridge_brand
    fridge.size = Fridge_size
    fridge.has_food = false
    fridge.has_drink = false 
  end 
end
### END Option B

### Option C) Delete A Fridge
if option.upcase == 'C'
  #List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
  end
  puts "Enter The ID Of A Fridge to Delete"
  fridge_id_to_delete = gets.chomp
  Fridge.destroy(fridge_id_to_delete)
end
### END Option C

### Option D) List All Food In A Fridge Of Your Choice
if option.upcase == 'D'
  # List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
  end
  # Enter ID of fridge
  puts "Enter The ID Of A Fridge"
  fridge_to_look_in_id = gets.chomp
  fridge_to_look_in = Fridge.find(fridge_to_look_in_id)
  #Display those Foods in that Fridge
  fridge_to_look_in.food.map do |food|
    puts "Looks like we got a(n) " + food.name.to_s
    puts "I'd reckon it's about " + food.weight.to_s + " pounds"
    puts "Vegan friendly? " + food.is_vegan.to_s
    puts "Looks like it's been around since " + food.created_at.to_s
    puts "___ ___ ___"
  end
end
### END Option D

### Option E) Add A Food Item To A Fridge Of Your Choice
if option.upcase == 'E'
  #List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
  end
  # Enter ID of fridge
  puts "Enter The ID Of A Fridge"
  fridge_to_look_in_id = gets.chomp
  fridge_to_look_in = Fridge.find(fridge_to_look_in_id)
  # Create Food
  puts "What is this food's name?"
    Food_name = gets.chomp 
  puts "How much does this food weigh?"
    Food_weight = gets.chomp   
  puts "Is this vegan? (Enter 'true' or 'false')"
    Food_vegan = gets.chomp 
    # if Food_vegan = "Y" do 
    #   Food_vegan = true
    # elsif Food_vegan = "N" do 
    #   Food_vegan = false
    # end
  fridge_to_look_in.food.create do |food|
    food.name = Food_name
    food.weight = Food_weight
    food.is_vegan = Food_vegan
  end
end
### END Option E

### Option F) Eat (Delete) A Food Item From A Fridge Of Your Choice
if option.upcase == 'F'
  # List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
  end
  puts "Enter The ID Of A Fridge To Look In"
  fridge_to_look_in_id = gets.chomp
  fridge_to_look_in = Fridge.find(fridge_to_look_in_id)
  # Display those Foods in that Fridge
  fridge_to_look_in.food.map do |food|
    puts "Food ID: " + food.id.to_s
    puts "Looks like we got a(n) " + food.name.to_s
    puts "Looks like it's been around since " + food.created_at.to_s
    puts "___ ___ ___"
  end
  # Choose food to eat
  puts "Enter the ID of the food to eat"
  food_to_eat = gets.chomp
  fridge_to_look_in.food.destroy(food_to_eat)
end
### END Option F

### Option G) List All Drinks in A Fridge Of Your Choice
if option.upcase == 'G'
  # List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
  end
  # Enter ID of fridge
  puts "Enter The ID Of A Fridge"
  fridge_to_look_in_id = gets.chomp
  fridge_to_look_in = Fridge.find(fridge_to_look_in_id)
  #Display those Foods in that Fridge
  fridge_to_look_in.drink.map do |drink|
    puts "Looks like we got a(n) " + drink.name.to_s
    puts drink.size.to_s + " ounces " 
    puts "Alcohol? " + drink.is_alcoholic.to_s
    puts "Looks like it's been around since " + drink.created_at.to_s
    puts "___ ___ ___"
  end
end
### END Option G

### Option H) Add A Drink Item To A Fridge Of Your Choice
if option.upcase == 'H'
  #List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
  end
  # Enter ID of fridge
  puts "Enter The ID Of A Fridge"
  fridge_to_look_in_id = gets.chomp
  fridge_to_look_in = Fridge.find(fridge_to_look_in_id)
  # Create Food
  puts "What is this drink's name?"
    Drink_name = gets.chomp 
  puts "What size is this drink?"
    Drink_size = gets.chomp   
  puts "Does this drink contain alcohol? (Enter 'true' or 'false')"
    Drink_alcohol = gets.chomp 
  fridge_to_look_in.drink.create do |drink|
    drink.name = Drink_name
    drink.size = Drink_size
    drink.is_alcoholic = Drink_vegan
  end
end
### END Option H

### Option I) Consume PART Of A Food Item From A Fridge Of Your Choice (Update Size In Ounces)
if option.upcase == 'I'

  puts "Enter The ID Of A Fridge"

  #List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
  end

end
### END Option I

### Option J) Consume ALL Of A Drink Item From A Fridge Of Your Choice (Delete It)
if option.upcase == 'J'

  puts "Enter The ID Of A Fridge"

  #List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
  end

end
### END Option J