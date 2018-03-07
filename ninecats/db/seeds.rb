# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# t.integer "cat_id", null: false
# t.date "start_date", null: false
# t.date "end_date", null: false
# t.string "status", default: "PENDING", null: false


Cat.destroy_all
SEX = ['M', 'F']

cat1 = Cat.create!(name: Faker::Cat.name, birth_date: Faker::Date.birthday(0, 14), color: Cat::COLORS.sample, sex: SEX.sample, description: Faker::Cat.breed)
cat2 = Cat.create!(name: Faker::Cat.name, birth_date: Faker::Date.birthday(0, 14), color: Cat::COLORS.sample, sex: SEX.sample, description: Faker::Cat.breed)
cat3 = Cat.create!(name: Faker::Cat.name, birth_date: Faker::Date.birthday(0, 14), color: Cat::COLORS.sample, sex: SEX.sample, description: Faker::Cat.breed)
cat4 = Cat.create!(name: Faker::Cat.name, birth_date: Faker::Date.birthday(0, 14), color: Cat::COLORS.sample, sex: SEX.sample, description: Faker::Cat.breed)
cat5 = Cat.create!(name: Faker::Cat.name, birth_date: Faker::Date.birthday(0, 14), color: Cat::COLORS.sample, sex: SEX.sample, description: Faker::Cat.breed)

cat_rental1 = CatRentalRequest.create!(cat_id: cat1.id, start_date: Date.new(2012, 1, 1), end_date: Date.new(2012, 1, 31))
cat_rental2 = CatRentalRequest.create!(cat_id: cat1.id, start_date: Date.new(2012, 2, 1), end_date: Date.new(2012, 2, 28))
cat_rental3 = CatRentalRequest.create!(cat_id: Cat.first.id, start_date: Date.new(2012,1,15), end_date: Date.new(2012,1,29), status: 'APPROVED')
cat_rental4 = CatRentalRequest.create!(cat_id: Cat.first.id, start_date: Date.new(2012,1,28), end_date: Date.new(2012,2,2), status: 'APPROVED')


# cat_rental2 = CatRentalRequest.create!(cat_id: cat1.id, start_date: '02/01/2012', end_date: '02/29/2012')
