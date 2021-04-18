# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
Topic.create(title: "Topic #{topic}")
end

puts '3 topics item created'

9.times do |blog|
Blog.create!(
	title: "My Blog Title ##{blog} ", 
	body: "One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked.", topic_id: Topic.last.id )
end

5.times do |skill|
	Skill.create!(
		title: 'Rails #{skill}',
		percent_utilized: 15 )
end

8.times do |portfolio_item|
	PortfolioSet.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. ",
		main_image: "https://picsum.photos/600/400",
		thumb_image: "https://picsum.photos/350/150",
		)
end

1.times do |portfolio_item|
	PortfolioSet.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Vuejs",
		body: "He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. ",
		main_image: "https://picsum.photos/600/400",
		thumb_image: "https://picsum.photos/350/150",
		)
end

puts "1 time Portfolio set item created Angular"

puts "9 times Blog post items created"
puts "5 times Skill items created"
puts "8 times Portfolio set item created Ruby"