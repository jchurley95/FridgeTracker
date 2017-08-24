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

### Option A) List all Fridges
option = gets.chomp
puts "You selected #{option}"

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

### Option B 
### END Option B

### Option C
### END Option C

### Option D
### END Option D

### Option E
### END Option E

### Option F
### END Option F

### Option G
### END Option G

### Option H
### END Option H

### Option I
### END Option I

### Option J
### END Option J