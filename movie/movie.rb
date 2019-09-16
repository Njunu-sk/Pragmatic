class Movie
    attr_reader :rank
    attr_accessor :title
        def initialize(title, rank = 0)
            @title = title.capitalize
            @rank = rank
            @snack_carb = Hash.new(0)
        end
        def hit?
            @rank >= 6
        end
        def status
            hit?  ? "Hit" : "Floop"
        end
        def thump_up
            @rank += 1
        end
        def thump_down
            @rank -= 1
        end

        def <=>(other_movie)
             other_movie.rank <=> @rank
        end

        def ate_snack(snack)
            @snack_carb[snack.name] += snack.carbs
            puts "#{@title} led to #{snack.name} : #{snack.carbs} carbs rise!!"
            puts "#{@title}'s snacks :#{@snack_carb}"
        end
        
        def each_snack
            @snack_carb.each do |name, carbs|
                snack = Snack.new(name, carbs)
                yield snack
            end
        end

        def carbs_consumed
            @snack_carb.values.reduce(0, :+)
        end

        def to_s
            "#{@title},has a rank of #{@rank}"
        end
    end
    if __FILE__== $0
    movie = Movie.new("TPF", 8)
    puts movie.title
    puts movie.rank

    puts movie.thump_up
    puts movie.thump_down
    puts movie.rank
    end



