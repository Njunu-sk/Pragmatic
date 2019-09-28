require_relative 'order'
orders = []
1.upto(3) do |n|
    orders << Order.new("customer#{n}@gmail.com", n*10 )
end

puts orders