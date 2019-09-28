class Order
    attr_accessor :email, :total
    def initialize(email, total)
        @email = email
        @total = total
    end

    def to_s
        "#{email} : #{total}"
    end
end

if __FILE__ ==$0
    orders = []
    5.times do |n|
        orders << Order.new("customer#{n}@gmail.com", n*10)
    end

    puts orders
end