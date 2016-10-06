# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

6.times do
  User.create(
    name: Faker::Superhero.name,
    email: Faker::Internet.email, 
    password_digest: Faker::Hipster.words(1)
  )
end

24.times do
  Question.create(
    title: Faker::ChuckNorris.fact,
    content: Faker::Company.catch_phrase + ". " + Faker::Company.catch_phrase,
    up_votes: rand(0..25),
    down_votes: rand(0..25),
    # user_id: rand(1..12),
  )
end

100.times do 
  Answer.create(
    content: Faker::Hacker.say_something_smart + ".  " + Faker::Hacker.say_something_smart,
    up_votes: rand(0..25),
    down_votes: rand(0..25),
    # user_id: rand(1..12),
    # question_id: rand(1..24)
  )
end
