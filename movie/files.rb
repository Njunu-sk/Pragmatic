require_relative 'movie'
File.readlines("movies.txt").each do |line|
    title, rank = line.split(",")
    movie = Movie.new(title, rank.to_i)
    puts movie
end