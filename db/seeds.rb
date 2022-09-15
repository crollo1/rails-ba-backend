Airplane.destroy_all

a1 = Airplane.create!(name: "747", column: 4, row: 24)
a2 = Airplane.create!(name: "737", column: 4, row: 24)
a3 = Airplane.create!(name: "A-380", column: 4, row: 24)


puts "Created #{Airplane.count} airplane."

# rails g model Flight date:date flight:string origin:string destination:string

Flight.destroy_all

f1 = Flight.create!(

  date: Date.parse("December 09, 2011"),
  flight: "65",
  origin: "SYD",
  destination: "SUV"

)

f2 = Flight.create!(

    date: Date.parse("December 09, 2011"),
    flight: "89",
    origin: "LAX",
    destination: "CDG"
  
)

f3 = Flight.create!(

    date: Date.parse("December 09, 2011"),
    flight: "23",
    origin: "MEL",
    destination: "TYO"
  
)

puts "Created #{Flight.count} flight."

# rails

#################### Create Users ######################
User.destroy_all

user1 = User.create! name: "Dee"
user2 = User.create! name: "Craig"
user3 = User.create! name: "Wen"

puts "Created #{User.count} users."


############## Create Reservations ##################

Reservation.destroy_all

res1 = Reservation.create! seat: "1A"
res2 = Reservation.create! seat: "13D"
res3 = Reservation.create! seat: "22C"
res4 = Reservation.create! seat: "8B"
res5 = Reservation.create! seat: "24D"


puts "Created #{Reservation.count} reservations."

#################### Create Associations #######################

f1.reservations << res1 << res3 << res5


################## Create flight associations ####################

a1.flights << f3
a2.flights << f2
a3.flights << f1
