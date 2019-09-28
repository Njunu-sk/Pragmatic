name = "simon"
temp = Math::PI/3
#hint semi colon in the block parameters and the temp var
3.times do |number; temp|
    name = "samuel"
    temp = 98.4
    puts "#{number}, name :#{name} and temp is :#{temp}"
end

puts name
puts temp
