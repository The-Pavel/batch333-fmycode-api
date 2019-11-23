# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Story.destroy_all
Comment.destroy_all
stories = [
  { name:'Mo', text: 'Hello World' },
  { name:'Fabien', text: 'Hello Python' },
  { name:'Brian', text: 'Hello JS' },
  { name:'Forrest', text: 'Hello Rails' }
]
Story.create(stories)
Story.all.each do |story|
  Comment.create(name: "Bill", content: "This is a comment", story_id: story.id)
end

puts Story.all
puts "comments"
puts Comment.all
