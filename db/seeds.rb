puts 'Destory all doses'

Dose.destroy_all

puts 'Destory all ingredients'

Ingredient.destroy_all

puts 'Destory all cocktails'

Cocktail.destroy_all

puts 'Creating Ingredients'
lemon = Ingredient.create!(name: 'lemon')
ice = Ingredient.create!(name: 'ice')
rhum = Ingredient.create!(name: 'rhum')
banana = Ingredient.create!(name: 'banana')
mango = Ingredient.create!(name: 'mango')

puts 'Creating Cocktails'
mango_mojito = Cocktail.create!(name: 'Mango mojito')
lemon_mojito = Cocktail.create!(name: 'Lemon mojito')
banana_mojito = Cocktail.create!(name: 'Banana mojito')

puts "created #{Cocktail.count} cocktails"

puts 'Creating Doses'

#Strawberry Mojito
Dose.create!({
  description: "Add 10 cubes",
  ingredient: ice,
  cocktail: mango_mojito
})
Dose.create!({
  description: "Add 2 slices",
  ingredient: lemon,
  cocktail: mango_mojito
})

Dose.create!({
  description: "Mix frozen mango",
  ingredient: mango,
  cocktail: mango_mojito
})

Dose.create!({
  description: "Pour half a glass",
  ingredient: rhum,
  cocktail: lemon_mojito
  })

#Classic Mojito
Dose.create!({
  description: "Add 10 cubes",
  ingredient: ice,
  cocktail: lemon_mojito
})
Dose.create!({
  description: "Add 2 slices",
  ingredient: lemon,
  cocktail: lemon_mojito
})

Dose.create!({
  description: "Mix a handful of bananas",
  ingredient: banana,
  cocktail: banana_mojito
})

Dose.create!({
  description: "Pour half a glass",
  ingredient: rhum,
  cocktail: banana_mojito
})

puts 'Finish'
