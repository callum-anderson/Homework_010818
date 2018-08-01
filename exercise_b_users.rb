users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p "Jonathan's Twitter handle: #{users["Jonathan"][:twitter]}"
# 2. Get Erik's hometown
p "Erik's hometown: #{users["Erik"][:home_town]}"
# 3. Get the array of Erik's lottery numbers
p "An array of Erik's lottery numbers: #{users["Erik"][:lottery_numbers]}"
# 4. Get the type of Avril's pet Monty
p "Avril's pet Monty is a #{users["Avril"][:pets][0][:species]}"
# 5. Get the smallest of Erik's lottery numbers
#minmax - returns array with min at [0] and max at [1]
#p users["Erik"][:lottery_numbers].minmax()[0]
#array sort then pulling lowest value - could use [0] as well
p "Erik's smallest lottery number: #{users["Erik"][:lottery_numbers].sort().first()}"
# 6. Return an array of Avril's lottery numbers that are even
avril_even_lottery_numbers = []
for number in users["Avril"][:lottery_numbers]
  if number % 2 == 0
    avril_even_lottery_numbers.push(number)
  end
end
p "Avril's even lottery numbers: #{avril_even_lottery_numbers}"
# 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
users["Erik"][:lottery_numbers].push(7)
p "Erik's updated lottery numbers: #{users["Erik"][:lottery_numbers]}"
# 8. Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
p "Erik's updated home town: #{users["Erik"][:home_town]}"
# 9. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets].push({name: "Fluffy", species: "dog"})
p "#{users["Erik"][:pets][4][:name]} added to Erik's pets."
# 10. Add another person to the users hash
users["Susan"] = {
  :twitter => "susanb",
  :lottery_numbers => [7, 20, 28, 35, 42, 44],
  :home_town => "Tranent",
  :pets => [
  {
    :name => "Tibbles",
    :species => "cat"
  },
  {
    :name => "Nemo",
    :species => "goldfish"
  },
  {
    :name => "Harry",
    :species => "Canary"
  }
]
}

p "Added Susan..."
users["Susan"].each {|key, value| p "#{key} = #{value}"}
