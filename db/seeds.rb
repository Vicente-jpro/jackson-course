# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

MiningType.create!([
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

Coin.create!([
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

