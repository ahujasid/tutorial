# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
	Blog.create!(
		title: "no u #{blog}",
	  body: "ok"
	  )
end

5.times do |skill|
	Skill.create!(title:"Rails #{skill}",
	percent_utlized: 15
	)
end

7.times do |p|
	Portfolio.create!(
		title: "Title #{p}",
		subtitle: "Yes",
		body: "no u haha yes",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200",
		)
end