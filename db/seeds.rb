Fridge.destroy_all

homeboy = Fridge.create(location: 'Kitchen', brand:'Kenmore', size: 18)
Food.create(fridge_id: homeboy.id, name: "Apple", weight: 2, is_vegan: true)
Food.create(fridge_id: homeboy.id, name: "Steak", weight: 20, is_vegan: false)
Food.create(fridge_id: homeboy.id, name: "Bread", weight: 15, is_vegan: true)
Food.create(fridge_id: homeboy.id, name: "Lemon", weight: 3, is_vegan: true)
Food.create(fridge_id: homeboy.id, name: "Pudding", weight: 12, is_vegan: true)   
# if homeboy.foods.count = 0 then homeboy.has_food = false
Drink.create(fridge_id: homeboy.id, name: "Coke", size: 12, is_alcoholic: false)
Drink.create(fridge_id: homeboy.id, name: "Sprite", size: 10, is_alcoholic: false)
Drink.create(fridge_id: homeboy.id, name: "Lemonade", size: 5, is_alcoholic: false)
Drink.create(fridge_id: homeboy.id, name: "Sweet Tea", size: 3, is_alcoholic: false)
Drink.create(fridge_id: homeboy.id, name: "Beer", size: 5, is_alcoholic: true)      
# if homeboy.drinks.count = 0 then homeboy.has_drink = false

tank = Fridge.create(location: 'Garage', brand:'GE', size: 14)
Food.create(fridge_id: tank.id, name: "Pizza", weight: 5, is_vegan: true)
Food.create(fridge_id: tank.id, name: "Venison", weight: 30, is_vegan: false)
Food.create(fridge_id: tank.id, name: "Steak Burritos", weight: 5, is_vegan: false)
Food.create(fridge_id: tank.id, name: "Popsicles", weight: 23, is_vegan: true)
Food.create(fridge_id: tank.id, name: "Queso", weight: 14, is_vegan: true)   
# if tank.foods.count = 0 then tank.has_food = false
Drink.create(fridge_id: tank.id, name: "Coke", size: 12, is_alcoholic: false)
Drink.create(fridge_id: tank.id, name: "Sprite", size: 10, is_alcoholic: false)
Drink.create(fridge_id: tank.id, name: "Lemonade", size: 5, is_alcoholic: false)
Drink.create(fridge_id: tank.id, name: "White Wine", size: 7, is_alcoholic: true)
Drink.create(fridge_id: tank.id, name: "Beer", size: 5, is_alcoholic: true)      
# if tank.drinks.count = 0 then tank.has_drink = false
