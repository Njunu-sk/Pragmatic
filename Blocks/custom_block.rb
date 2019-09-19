def roll
    puts "This is a custom block that is responsible for rolling a random number"
    number = rand(1..6)
    yield "Larry", number
end

roll { |name, number| puts "#{name} rolled #{number}" }