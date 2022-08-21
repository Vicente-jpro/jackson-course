# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

15.times do |number| 
	User.find_or_create_by!(
		email: "vicente#{number}@gmail.com",
		status: 1, 
		password: "Vicente",
   		password_confirmation: "Vicente"

	)
end


MiningType.find_or_create_by!([
	  {
		description: "ANGOLA",
		acronym: "KZ"
	  },
	  {
		description: "ESTADOS UNIDOS",
		acronym: "USD"
	  },
	  {
		description: "BRASIL",
		acronym: "R"
	  },
	  {
		description: "EUROPA",
		acronym: "E"
	  }
])

Coin.find_or_create_by!([
	  {
		description: "Kwanza",
		acronym: "KZ",
		mining_type: MiningType.first
	  },
	  {
		description: "Dolar",
		acronym: "USD",
		mining_type: MiningType.first
	  },
	  {
		description: "Reais",
		acronym: "R",
		mining_type: MiningType.first
	  },
	  {
		description: "Euro",
		acronym: "E",
		mining_type: MiningType.first
	  }
  ]
)

