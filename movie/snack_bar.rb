Snack = Struct.new(:name, :carbs)

module Snackbar
    SNACKS = [
        Snack.new(:popcorn, 12),
        Snack.new(:soda, 5),
        Snack.new(:kfc, 123),
        Snack.new(:pizza, 23)
    ]

    def self.random
        SNACKS.sample
    end
end
if __FILE__ == $0
    puts Snackbar::SNACKS
    puts "******************"
    puts Snackbar.random
    snack = Snackbar.random
    puts "Enjoy your #{snack.name} : #{snack.carbs} carbs"
end