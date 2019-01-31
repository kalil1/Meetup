# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

activities = [
	[1, 'Football'],
	[2, 'Basketball'],
	[3, 'Swimming'],
	[4, 'Baseball'],

]
activities.each do |activity|
Activity.create(:id => activity[0], :name => activity[1])
end


p "Done"
