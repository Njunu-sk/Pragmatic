class Movie
    attr_reader :rank
    attr_accessor :title
        def initialize(title, rank = 0)
            @title = title
            @rank = rank
        end
        def thump_up
            @rank += 1
        end
        def thump_down
            @rank -= 1
        end
        def to_s
            "#{@title}, has a rank of #{@rank}"
        end
    end
# movie = Movie.new("TPF", 8)
# puts movie.title
# puts movie.rank

# puts movie.thump_up
# puts movie.thump_down
# puts movie.rank



