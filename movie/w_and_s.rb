module WAndS
    def self.roll_die
        rand(1..10)
    end

    def self.review(movie)
        number_rolled = roll_die
            case number_rolled
            when 1...3
                movie.thump_up
                puts "#{movie.title} got a thumps down"
            when 1..5
                puts "#{movie.title} was skipped"
            else 
                movie.thump_down
                puts "#{movie.title} got a thumps up!"
            end
    end
end

