# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

5.times do
  Category.create!(
    name: Faker::Commerce.department,
    description: Faker::Company.catch_phrase
  )
end

6.times do
  User.create!(
    name: Faker::Superhero.name,
    email: Faker::Internet.email, 
    password: Faker::Internet.password(6)
  )
end

12.times do
  Question.create!(
    title: Faker::ChuckNorris.fact,
    content: Faker::Company.catch_phrase + ". " + Faker::Company.catch_phrase,
    user_id: rand(1..6),
    category_id: rand(1..5)
  )
end

24.times do 
  Answer.create!(
    content: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart,
    user_id: rand(1..6),
    question_id: rand(1..12)
  )
end
