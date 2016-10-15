# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Category.create!(
  name: 'Dining & Night Life',
  description: 'Enjoy Southern California\'s best restaurants, bars, and numerous watering holes...'
)

Category.create!(
  name: 'Live Events',
  description: 'Concerts, sporting events, festivals and other happenings...'
)

Category.create!(
  name: 'Outdoor Activities',
  description: 'Hiking, Rafting, Rowing, and other fresh-air, blood-pumping experiences...'
)

Category.create!(
  name: 'Must See',
  description: 'Things not to miss when visiting Southern California...',
)

Category.create!(
  name: 'Shopping',
  description: 'Where to spend that money burning a hole in your pocket.'
)

