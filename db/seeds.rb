# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.create(name: "Emanuel")
g1 = u.groups.create(name: "Courses")
g2 = u.groups.create(name: "Equipment")
groups = []
groups << g1
groups << g2
i1 = u.investments.create(name: "Developing", amount:200, groups: groups) 
