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
mint_leaves = Ingredient.create!(name: 'mint leaves')
strawberry = Ingredient.create!(name: 'strawberry')

puts 'Creating Cocktails'
strawberry_mojito = Cocktail.create!(name: 'Strawberry mojito')
classic_mojito = Cocktail.create!(name: 'Classic mojito')

puts "created #{Cocktail.count} cocktails"

puts 'Creating Doses'

#Strawberry Mojito
Dose.create!({
  description: "Add 10 cubes",
  ingredient: ice,
  cocktail: strawberry_mojito
})
Dose.create!({
  description: "Add 2 slices",
  ingredient: lemon,
  cocktail: strawberry_mojito
})

Dose.create!({
  description: "Mix frozen berries",
  ingredient: strawberry,
  cocktail: strawberry_mojito
})

Dose.create!({
  description: "Pour half a glass",
  ingredient: rhum,
  cocktail: strawberry_mojito
  })

#Classic Mojito
Dose.create!({
  description: "Add 10 cubes",
  ingredient: ice,
  cocktail: classic_mojito
})
Dose.create!({
  description: "Add 2 slices",
  ingredient: lemon,
  cocktail: classic_mojito
})

Dose.create!({
  description: "Mix a handful of leaves",
  ingredient: mint_leaves,
  cocktail: classic_mojito
})

Dose.create!({
  description: "Pour half a glass",
  ingredient: rhum,
  cocktail: classic_mojito
})

puts 'Finish'
