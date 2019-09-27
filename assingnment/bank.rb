class Bank
    # attr_writer :principal, :duration
    # def initialize(principal, duration)
    #     @principal = principal
    #     @duartion = duration
    # end
    
    def input
        puts "Please your name and tellers name respectively:"
        puts "Your name:" 
        name = gets.chomp()
        puts "Tellers name:" 
        teller = gets.chomp()

        puts "Please key in the principal amount:"
        principal = gets.chomp().to_i
        puts "Please key in the durations in months you want to pay:"
        duration = gets.chomp().to_i
     
        puts "Processing fee is 2.5% of principal amount"
        processing = 0.025 * principal
        puts "The processing fee is #{processing}"
    
        puts "Interest rates is calculated as 13.15 of the principal amount"
        interest = 0.131 * principal
        puts "This is interest per month: #{interest}"
        charges = interest * duration
        puts "The interest as per duration given is : #{charges}"
    
        ttl = charges + processing
        total =ttl + principal 
        puts "This is the total amount the person has to return: #{total}"
        puts "Thank you #{name} you were served by #{teller} at #{Time.now}"
    end
end

b1 = Bank.new()
b1.input


