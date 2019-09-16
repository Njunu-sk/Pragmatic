require_relative "movie"

movie1 = Movie.new("gotham", 5)
movie2 = Movie.new("g.o.t", 7)
movie3 = Movie.new("power", 9)

movies = [movie1, movie2, movie3].reverse
movies.sort
