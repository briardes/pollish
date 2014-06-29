# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
poll = Poll.create(
  owner: "test",
  question: "lets test this capitalization!",
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
