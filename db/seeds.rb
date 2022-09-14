Airplane.destroy_all

Airplane.create!(

  name: "747",
  column: 4,
  row: 24

)

puts "Created #{Airplane.count} airplane."

# rails g model Flight date:date flight:string origin:string destination:string

Flight.destroy_all

f1 = Flight.create!(

  date: Date.parse("December 09, 2011"),
  flight: "65",
  origin: "SYD",
  destination: "SUV",

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




