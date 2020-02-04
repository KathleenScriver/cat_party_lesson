# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CatParty.destroy_all
Cat.destroy_all
Party.destroy_all


fluffy = Cat.create(name: "Fluffy", breed: "Long hair", age: 3)
milo = Cat.create(name: "Milo", breed: "Tabby", age: 1)
tom = Cat.create(name: "Tom", breed: "Tuxedo", age: 7)
ahmed = Cat.create(name: "Ahmed", breed: "Teacher", age: 25)

p1 = Party.create(title: "At the Disco", theme: "Disco")
p2 = Party.create(title: "Crazy for Catnip", theme: "Catnip")
p3 = Party.create(title: "No Water for Us", theme: "Anti-Pool")

CatParty.create(cat: fluffy, party: p1)
CatParty.create(cat: milo, party: p1)
CatParty.create(cat: tom, party: p1)
CatParty.create(cat: ahmed, party: p1)

p2.cats << tom
ahmed.parties << p3

tom.parties.create(title: "Friday Night Meow", theme: "Friday")


