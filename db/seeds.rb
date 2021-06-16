# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(image_url: "test 1", user_id: 1)
Post.create(image_url: "test 2", user_id: 1)
Post.create(image_url: "test 3", user_id: 1)

Comment.create(post_id: 1, content: "Hello", user_id: 1)
Comment.create(post_id: 1, content: "World", user_id: 1)
Comment.create(post_id: 2, content: "Bye", user_id: 1)
