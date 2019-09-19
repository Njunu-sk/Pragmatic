name = "Simon"
temp = Math::PI / 4
number = 100

2.times do |number ; temp|
    name = "Moe"
    temp = 98.6
    puts "Hey #{name}, -#{number} :temp- #{temp}"
end

puts name
puts temp
puts number