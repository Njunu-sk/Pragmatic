class Store
     TAX_TABLE = { co: 0.02, mt: 0.00, az: 0.04 }
    attr_reader :email, :total, :status, :state
    def initialize(email, state, total, status=:pending)
        @email = email
        @total = total
        @state = state
        @status = status
    
    end
    def to_s
        "#{email} (#{state}) : $#{total} - #{status}"
    end
    
    def tax
        total * TAX_TABLE.values
    end

    stores = []
        stores << Store.new("ck-elect1@gmail.com", "co", 300)
        stores << Store.new("ck-elect2@gmail.com", "mt", 150, :completed )
        stores << Store.new("ck-elect3@gmail.com", "az", 100)
        stores << Store.new("ck-elect4@gmail.com", "mt", 500, :completed )

        puts stores


        puts "Partitioning the big and small orders"
        
        big_orders, small_orders = stores.partition { |o|  o.total >= 300 }
        puts "Big orders:"
        puts big_orders  

        puts "Small orders:"
        puts small_orders

        puts "Pending orders:"
        puts stores.any? { |o| o.status == :pending }
        order = stores.detect { |o| o.status == :pending }
        puts order

        puts "Partitioning the orders"
        pending_orders, completed_orders = stores.partition { |o| o.status == :pending }
        puts "Pending orders:"
        puts pending_orders
        puts "Completed orders"
        puts completed_orders

    puts "Newsletter email:"
    emails = stores.map { |o| o.email.downcase }
    puts emails
    sum = 0
    stores.each { |o| sum += o.total}
    puts "The total sales is :$ #{sum}"

    puts "Taxes:"
    puts "We are going to output  taxes of the state mt---"
    mt_taxes= stores.select { |o| o.state == "mt" }
    #mt_taxes = mt_orders.map { |o| o.tax }
    puts mt_taxes
    
end

