# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Create 1st 4 categories
Category.create!(
  name: 'Los Angeles'
)

Category.create!(
  name: 'San Bernardino'
)

Category.create!(
  name: 'Orange County'
)

Category.create!(
  name: 'San Diego'
)

#Create 20 users
20.times do 
  user_name = Faker::Internet.user_name
  User.create!(
    name: user_name,
    email: Faker::Internet.email(user_name),
    password: Faker::Internet.password(6)
  )
end

# Provide random user
def random_user
  User.find(1 + Random.rand(20))
end

# Questions for Los Angeles
# 1
Question.create!(
  title: 'Scenic hiking',
  content: 'I\'m looking for a good hike, at least 3 miles long. We\'re bringing our 6 year old, so nothing too steep or strenuous.',
  user_id: User.find(1).id,
  category_id: 1
)

Answer.create!(
  content: 'Vasquez Rocks is great. It\'s about an hour north of Downtown. Cool rock formations, and it\'s where they shot Blazing Saddles.',
  user_id: random_user.id,
  question_id: 1
)

# 2
Question.create!(
  title: 'Sailing',
  content: 'I\'m thinking of learning how to sail. Does Marina del Rey offer classes?',
  user_id: User.find(2).id,
  category_id: 1
)

Answer.create!(
  content: 'Definitely. There are a number of classes offered in Marina, from group classes to private lessons. Good luck and have fun!',
  user_id: random_user.id,
  question_id: 2
)

# 3
Question.create!(
  title: 'Good fishing?',
  content: 'I just moved to Hollywood from Colorado (go Broncos!) and I was wondering if there are any good fishing spots? I only have freshwater experience, and I\'m not interested in taking a charter boat from one of the harbors.',
  user_id: User.find(3).id,
  category_id: 1
)

# 4
Question.create!(
  title: 'Wilderness survival',
  content: 'Can someone recommend a class for wilderness survival? I want to learn things like navigation, making a fire, finding water. I read a really cool book, it\'s an old Air Force manual for crashed pilots and how to survive in different environments. My concern is maybe the information is outdated. Or at least I want to practice out in the wild. I\'d love to hear from anyone who has taken wilderness survival classes in the LA area. I\'m open to private or community college classes.',
  user_id: User.find(4).id,
  category_id: 1
)

# Questions for San Bernardino
# 5
Question.create!(
  title: 'Best slopes',
  content: 'Where are the best slopes for snowboarding? I\'ve been to Snow Valley, but wasn\'t impressed.',
  user_id: User.find(5).id,
  category_id: 2
)

# 6
Question.create!(
  title: 'How many ways to Big Bear?',
  content: 'My band is planning a camping trip in Big Bear and we need to know how to get there. I\'ve heard there\'s more than 1 way to get there?',
  user_id: User.find(6).id,
  category_id: 2
)

Answer.create!(
  content: 'There are 3 ways to big bear. Everyone knows that.',
  user_id: random_user.id,
  question_id: 6
)

Answer.create!(
  content: 'You can take the 60',
  user_id: random_user.id,
  question_id: 6
)

# 7
Question.create!(
  title: 'Fishing in Lake Arrowhead ',
  content: 'How\'s the fishing in Lake Arrowhead? Not expecting Marlin, but I\'m taking my daughter fishing for the first time and want the experience to be exciting for her.',
  user_id: User.find(7).id,
  category_id: 2
)

Answer.create!(
  content: 'The Arrowhead Lake Association stocks Large and Small mouth bass, rainbow trout, catfish, and a few other species. There are definitely enough fish for a great time.',
  user_id: random_user.id,
  question_id: 7
)

# Questions for Orange County
# 8
Question.create!(
  title: 'Great hiking',
  content: 'Where is the best hiking in Orange County?',
  user_id: User.find(9).id,
  category_id: 3
)

Answer.create!(
  content: 'Panhe Nature Trail is short and easy, by San Onofre.',
  user_id: random_user.id,
  question_id: 8
)

Answer.create!(
  content: 'Small Peak is awesome. It\'s 3 miles and not for beginners. Highly recommended',
  user_id: random_user.id,
  question_id: 8
)

Answer.create!(
  content: 'Are you a serious hiker? You should try hiking from Christianitos to Prima Dechecha Loop. You\'re looking at nearly 11 miles of bad-ass hiking. Bring some water and leave the rookies at home.',
  user_id: random_user.id,
  question_id: 8
)

Answer.create!(
  content: 'In Laguna Niguel you have a couple nice hiking options: Colinas Bluff Trail and Salt Creek Trail. Both are about 6.5 miles and a decent challenge. San Clemente has several hikes you can do: Las Ramblas Trail, Ridgeline Trail, and of course San Clemente Beach Trail. They are all shorter than the Laguna Niguel trails and San Clemente Beach is eary - more of a walk, really. I\'ve done them all, and you should take the time to do the same.',
  user_id: random_user.id,
  question_id: 8
)

# 9
Question.create!(
  title: 'Rowing',
  content: 'I did crew in college and just recently moved to Costa Mesa. What are some options for rowing, crew, even kayaking nearby?',
  user_id: User.find(10).id,
  category_id: 3
)

# 10
Question.create!(
  title: 'I\'d like to go skydiving',
  content: 'Is this something I can find in Orange County? I have never jumped before, but I want to try.',
  user_id: User.find(11).id,
  category_id: 3
)

Answer.create!(
  content: 'Check out Orange County Skydiving. They offer tandem jumps for first-timers.',
  user_id: random_user.id,
  question_id: 10

)

# 11
Question.create!(
  title: 'Tough Mudder Training',
  content: 'I want to do a Tough Mudder next year, but I need to train. Can anyone suggest a good run with steep hills, maybe even obstacles?',
  user_id: User.find(12).id,
  category_id: 3
)

# Questions for San Diego
# 12
Question.create!(
  title: 'Bike tours',
  content: 'I hear San Diego has some great bike tours. Can anyone recommend an affordable tour that is more than just a beach cruise?',
  user_id: User.find(13).id,
  category_id: 4
)

# 13
Question.create!(
  title: 'Kayaking group anyone?',
  content: 'I\'m new to kayaking. Is anyone interested in forming a group for weekend excursions?',
  user_id: User.find(14).id,
  category_id: 4
)

Answer.create!(
  content: 'I\'m new too, and I like your idea. HikeBikeKayak.com has a few tours that sound cool. They allow group tours.',
  user_id: random_user.id,
  question_id: 13
)

# 14
Question.create!(
  title: 'Beach Volleyball',
  content: 'I don\'t know if this counts as an outdoors activity, but are there any clubs for beach volleyball?',
  user_id: User.find(15).id,
  category_id: 4
)

# 15
Question.create!(
  title: 'Camping trip',
  content: 'My family will be in San Diego in January and despite the cold we plan to do a weekend camping trip. Where are some of the better spots? My wife prefers the forest to the beach.',
  user_id: User.find(16).id,
  category_id: 4
)

# Generate random votes
Answer.all.map do |a|
  up_votes = 0 + Random.rand(5)
  down_votes = 0 + Random.rand(5)

  up_votes.times do |u|
    a.liked_by random_user
  end

  down_votes.times do |d|
    a.disliked_by random_user
  end
end
