Airplane.destroy_all

Airplane.create!(

  name: "747",
  column: 4,
  row: 24,

)

puts "Created #{Airplane.count} airplane."

# rails g model Flight date:date flight:string origin:string destination:string

Flight.destroy_all

Flight.create!(

  date: Date.parse("December 09, 2011"),
  flight: "13",
  origin: "SYD",
  destination: "SUV",

)

puts "Created #{Flight.count} flight."

# rails

#################### Create Users ######################
User.destroy_all

User.create! name: "Dee"
User.create! name: "Craig"
User.create! name: "Wen"

puts "Created #{User.count} users."
