# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
wine.first_or_create!(name: 'Mello Merlot', year:1972,winery:'Shannon Valley', country:'USA', varietal:'Merlot')
wine.first_or_create!(name: 'Shakin Shiraz', year:1990,winery:'Donovan Vinyards', country:'USA', varietal: 'Shiraz')
wine.first_or_create!(name: 'Pea No North', year:2010,winery:'Marshall Vinyards', country:'USA', varietal: 'Pinot Noir')

