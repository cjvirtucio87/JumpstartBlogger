# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




10.times do |n|
  Article.create!(title: "Article ##{n}",
                  body: "This is an article!")
end

10.times do |n|
  Article.all.each do |article|
    article.comments.push Comment.new(author: "A commenter number #{n}",
                             body: "Comment number #{n}")
  end
end
