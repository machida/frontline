# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'yoshida naoki')
User.create(name: 'yoshinao0330')
User.create(name: 'frasel')

Party.create(name: 'p4d hackason #1', end_at: Time.now.to_date.tomorrow)
Party.create(name: 'p4d hackason #2', end_at: Time.now.to_date.tomorrow)
Party.create(name: 'p4d hackason #3', end_at: Time.now.to_date.tomorrow)
