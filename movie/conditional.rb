require_relative 'movie'


movie = Movie.new("haleluhya",1)
if movie.rank >= 10
    puts "Thats a hit"
else 
    puts "Booooo!!!"
end
# puts movie.rank >= 10
# puts movie.rank <= 10