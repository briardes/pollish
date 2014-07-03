# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
poll = Poll.create(
  owner: "test",
  question: "lets test this capitalization!"
)

yes = Option.create(
  answer: "yes",
  count: 50,
  poll_id: 1
)

no = Option.create(
  answer: "no",
  count: 150,
  poll_id: 1
)

poll2 = Poll.create(
    owner: 'Poll Meister',
    question: 'What is you favorite animal?'
)

Option.create(
    answer: "Tiger",
    count: 50,
    poll_id: 2
)

Option.create(
    answer: "Gorilla",
    count: 70,
    poll_id: 2
)
Option.create(
    answer: "Slow Loris",
    count: 50,
    poll_id: 2
)

Option.create(
    answer: "Fruitbat",
    count: 200,
    poll_id: 2
)

Option.create(
    answer: "BlueWhale",
    count: 450,
    poll_id: 2
)
