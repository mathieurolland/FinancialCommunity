# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Users

loan = User.create( email: "loan@gmail.com", password: "blabla", first_name: "Loan", last_name: "Robert" , pseudo: "LoRo")
math = User.create( email: "math@gmail.com", password: "blabla", first_name: "math", last_name: "Robert" , pseudo: "math")
jo = User.create( email: "jo@gmail.com", password: "blabla", first_name: "jo", last_name: "Robert" , pseudo: "jo")
paul = User.create( email: "paul@gmail.com", password: "blabla", first_name: "paul", last_name: "Robert" , pseudo: "paul")
claire = User.create( email: "claire@gmail.com", password: "blabla", first_name: "claire", last_name: "Robert" , pseudo: "claire")
zach = User.create( email: "zach@gmail.com", password: "blabla", first_name: "zach", last_name: "Robert" , pseudo: "zach")
fred = User.create( email: "fred@gmail.com", password: "blabla", first_name: "fred", last_name: "Robert" , pseudo: "Fred")
toto = User.create( email: "toto@gmail.com", password: "blabla", first_name: "toto", last_name: "Robert" , pseudo: "toto")


#Markets

finance1 = Market.create( name:'finance1')
finance2 = Market.create( name:'finance2')
finance3 = Market.create( name:'finance3')
finance4 = Market.create( name:'finance4')
finance5 = Market.create( name:'finance5')
finance6 = Market.create( name:'finance6')

#Values

value1 = Value.create( name:"value1", market_id:"1")
value2 = Value.create( name:"value2", market_id:"1")
value3 = Value.create( name:"value3", market_id:"1")
value4 = Value.create( name:"value4", market_id:"2")
value5 = Value.create( name:"value5", market_id:"2")
value6 = Value.create( name:"value6", market_id:"3")
value7 = Value.create( name:"value7", market_id:"3")
value8 = Value.create( name:"value8", market_id:"3")
value9 = Value.create( name:"value9", market_id:"4")
value10 = Value.create( name:"value10", market_id:"4")
value11 = Value.create( name:"value11", market_id:"5")
value12 = Value.create( name:"value12", market_id:"5")

#user_values

User.all.each do |user|
  Value.all.shuffle[0..7].each do |value|
    UserValue.create(value: value, user: user)
  end
end

#connections

Connection.create( follower_id: 1, followed_id: 2)
Connection.create( follower_id: 1, followed_id: 5)
Connection.create( follower_id: 1, followed_id: 4)
Connection.create( follower_id: 1, followed_id: 3)
Connection.create( follower_id: 4, followed_id: 5)
Connection.create( follower_id: 3, followed_id: 5)
Connection.create( follower_id: 5, followed_id: 4)
Connection.create( follower_id: 8, followed_id: 6)
Connection.create( follower_id: 8, followed_id: 1)
Connection.create( follower_id: 5, followed_id: 2)
Connection.create( follower_id: 4, followed_id: 3)

#Debate_rooms

DebateRoom.create( user_id: 1, title: "super", market_id: 1)
DebateRoom.create( user_id: 1, title: "super", market_id: 2)

#Guest_boxes

 GuestBox.create( host_id:1, guest_id:5, debate_room_id: 1)
 GuestBox.create( host_id:1, guest_id:4, debate_room_id: 1)
 GuestBox.create( host_id:1, guest_id:3, debate_room_id: 1)
 GuestBox.create( host_id:1, guest_id:2, debate_room_id: 1)
 GuestBox.create( host_id:1, guest_id:1, debate_room_id: 1)
 GuestBox.create( host_id:1, guest_id:5, debate_room_id: 2)
 GuestBox.create( host_id:1, guest_id:4, debate_room_id: 2)
 GuestBox.create( host_id:1, guest_id:3, debate_room_id: 2)
 GuestBox.create( host_id:1, guest_id:2, debate_room_id: 2)
 GuestBox.create( host_id:1, guest_id:1, debate_room_id: 2)

 #messages

 Message.create( content: "ok", debate_room_id: 1, user_id: 1)
 Message.create( content: "ok", debate_room_id: 1, user_id: 2)
 Message.create( content: "ok", debate_room_id: 1, user_id: 3)
 Message.create( content: "ok", debate_room_id: 1, user_id: 3)
 Message.create( content: "ok", debate_room_id: 1, user_id: 4)
 Message.create( content: "ok", debate_room_id: 2, user_id: 1)
 Message.create( content: "ok", debate_room_id: 2, user_id: 2)
 Message.create( content: "ok", debate_room_id: 2, user_id: 3)
 Message.create( content: "ok", debate_room_id: 2, user_id: 3)
 Message.create( content: "ok", debate_room_id: 2, user_id: 4)


#Publications

Publication.create( content: "ok", theme: "aaaaa", market_id: 1, user_id: 1)
Publication.create( content: "aaa", theme: "aaaaa", market_id: 2, user_id: 1)
Publication.create( content: "ppp", theme: "aaaaa", market_id: 3, user_id: 3)
Publication.create( content: "fdf", theme: "aaaaa", market_id: 3, user_id: 2)
Publication.create( content: "ffdf", theme: "aaaaa", market_id: 4, user_id: 2)
Publication.create( content: "fsfe", theme: "aaaaa", market_id: 3, user_id: 6)
Publication.create( content: "feedad", theme: "aaaaa", market_id: 2, user_id: 7)
Publication.create( content: "fafafa", theme: "aaaaa", market_id: 1, user_id: 1)


#commentaire

Comment.create( content: "super", user_id: 1, publication_id: 1)
Comment.create( content: "trop ok", user_id: 2, publication_id: 1)
Comment.create( content: "hyper interessant", user_id: 3, publication_id: 1)
Comment.create( content: "je recommande", user_id: 4, publication_id: 1)
Comment.create( content: "au poil", user_id: 5, publication_id: 1)
Comment.create( content: "ta mère", user_id: 6, publication_id: 1)
Comment.create( content: "trop ok", user_id: 2, publication_id: 2)
Comment.create( content: "hyper interessant", user_id: 3, publication_id: 2)
Comment.create( content: "je recommande", user_id: 4, publication_id: 3)
Comment.create( content: "au poil", user_id: 5, publication_id: 4)
Comment.create( content: "ta mère", user_id: 6, publication_id: 5)





