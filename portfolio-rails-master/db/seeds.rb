# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Work.create(
	name: 'Gameboard', 
	imgurl: 'gameboard',
	description: 'Built with Ruby on Rails and Angular!'
	)
Work.create(
	name: 'Outbox', 
	imgurl: 'outbox',
	description: 'Rails, JQuery'
	)
Work.create(
	name: 'Readme', 
	imgurl: 'readme',
	description: 'Ruby on rails again'
	)