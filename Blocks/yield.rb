def roll
    number = rand(1..10)
    result = yield "Larry", number
    puts "The block returned ::#{result}"
end


roll do|name,number| 
    puts "#{name} chose the number :#{number}" 
    number*10  
end