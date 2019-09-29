class Phone
    attr_accessor :airplane_mode
    def initialize
        @airplane_mode = false
    end
    def text(message)
        if @airplane_mode
            puts "saved message:#{message}"
        else
            puts "sent message:#{message}"
        end
    end
    def in_airplane_mode
        @airplane_mode = true
        yield
        @airplane_mode = false
    end
end

 
phone = Phone.new
phone.text("Hey i an not on airplane mode")
phone.in_airplane_mode do
    phone.text("Hey i have been switched to airplane mode")
    phone.text("I expect that the message will be saved")
end