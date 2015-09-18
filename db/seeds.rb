# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(name: 'Jack', age: '28', location: 'London')
u2 = User.create(name: 'James', age: '14', location: 'Birmingham')
u3 = User.create(name: 'Niall', age: '55', location: 'Madrid')

f10 = Fact.create(distance: '10km', wording: 'You just ran the distance of two Mont Blancs - nice!', image: "https://s-media-cache-ak0.pinimg.com/236x/77/c7/de/77c7de57b503e6f3a179392976167fbb.jpg" )


u1.sessions.create(activity: 'Running', distance: '10', location: "London", fact_id: 10)
u1.sessions.create(activity: 'Jogging', distance: "5", location: "London", fact_id: 5)
u2.sessions.create(activity: 'Walking', distance: "5", location: "Belgium", fact_id: 5)
u2.sessions.create(activity: 'Running', distance: "7", location: "Belgium", fact_id: 7)
u3.sessions.create(activity: 'Running', distance: "100", location: "Paris", fact_id: 100)
u3.sessions.create(activity: 'Walking', distance: "56", location: "Paris", fact_id: 56)

