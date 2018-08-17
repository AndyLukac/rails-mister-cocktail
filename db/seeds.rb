# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tequila_paf = Cocktail.create!(name: 'Tequila paf')
tequila = Ingredient.create!(name: 'Tequila')
salt = Ingredient.create!(name: 'Salt')
lemon = Ingredient.create!(name: 'Lemon')

Dose.create!(ingredient_id: tequila.id, cocktail_id: tequila_paf.id, description: '3cl')
Dose.create!(ingredient_id: salt.id, cocktail_id: tequila_paf.id, description: '1 pinch')
Dose.create!(ingredient_id: lemon.id, cocktail_id: tequila_paf.id, description: '1 slice')

mojito = Cocktail.create!(name: 'Mojito')
mint = Ingredient.create!(name: 'Mint')
rhum = Ingredient.create!(name: 'Rhum')
sugar = Ingredient.create!(name: 'Sugar')
sparkling_water = Ingredient.create!(name: 'Sparkling Water')

Dose.create!(ingredient_id: rhum.id, cocktail_id: mojito.id, description: '4cl')
Dose.create!(ingredient_id: mint.id, cocktail_id: mojito.id, description: '10 leaves')
Dose.create!(ingredient_id: lemon.id, cocktail_id: mojito.id, description: '3 slice')
Dose.create!(ingredient_id: sugar.id, cocktail_id: mojito.id, description: '2 pinches')
Dose.create!(ingredient_id: sparkling_water.id, cocktail_id: mojito.id, description: 'Your call !')

cuba_libre = Cocktail.create!(name: 'Cuba Libre')
coca_cola = Ingredient.create!(name: 'Coca Cola')

Dose.create!(ingredient_id: rhum.id, cocktail_id: cuba_libre.id, description: '4cl')
Dose.create!(ingredient_id: coca_cola.id, cocktail_id: cuba_libre.id, description: '15cl')
Dose.create!(ingredient_id: lemon.id, cocktail_id: cuba_libre.id, description: '2 slice')
