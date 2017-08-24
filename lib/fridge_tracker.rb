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
  Fridge.delete(fridge_id_to_delete)

end
### END Option C

### Option D) List All Food In A Fridge Of Your Choice
if option.upcase == 'D'

  puts "Enter The ID Of A Fridge"

  #List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
  end

end
### END Option D

### Option E) Add A Food Item To A Fridge Of Your Choice
if option.upcase == 'E'

  puts "Enter The ID Of A Fridge"

  #List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
  end

end
### END Option E

### Option F) Eat (Delete) A Food Item From A Fridge Of Your Choice
if option.upcase == 'F'

  puts "Enter The ID Of A Fridge"

  #List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
  end

end
### END Option F

### Option G) List All Drinks in A Fridge Of Your Choice
if option.upcase == 'G'

  puts "Enter The ID Of A Fridge"

  #List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
  end

end
### END Option G

### Option H) Add A Drink Item To A Fridge Of Your Choice
if option.upcase == 'H'

  puts "Enter The ID Of A Fridge"

  #List Fridge Options
  Fridge.all.map do |fridge|
    puts "Fridge ID = " + fridge.id.to_s
    puts fridge.location.to_s
    puts "___ ___ ___"
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