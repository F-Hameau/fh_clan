puts "Destroying all subsidies"
Subsidy.destroy_all

puts "Destroying all requests"
Request.destroy_all

subsidies = [{
    name: 'Subvention des activités sportives',
    start_date: '1/10/2018',
    end_date: '31/12/2018',
    amount: 90
  },
  {
    name: 'Subvention des activités culturelles',
    start_date: '1/09/2018',
    end_date: '31/12/2018',
    amount: 120
  },
  {
    name: 'Subvention rentrée scolaire',
    start_date: '15/08/2018',
    end_date: '30/09/2018',
    amount: 60
  },
  {
    name: 'Subvention des affaires de toilettes pour chat et chien',
    start_date: '15/10/2018',
    end_date: '15/02/2019',
    amount: 17
  },
  {
    name: 'Subvention père noël',
    start_date: '10/12/2018',
    end_date: '23/12/2019',
    amount: 180
  }
 ]

puts "Seeding subsidies"
 subsidies.each { |subsidy| Subsidy.create!(subsidy)}
