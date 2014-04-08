# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Wine.create(name:'Mad Merlot', year:1955, winery:'NoVa Vinyards', country:'USA', varietal: 'Merlot')
Wine.create(name:'Pea No Nor', year:1975, winery:'Kiawah Vinyards', country:'USA', varietal: 'Pinot Noir')
Wine.create(name:'Rest Lynn', year:1990, winery:'Caper Vinyards', country:'France', varietal: 'Restylane')