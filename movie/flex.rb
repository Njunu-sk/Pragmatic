require_relative 'playlist'
require_relative 'movie'
movie1 = Movie.new("gotham", 8)
movie2 = Movie.new("g.o.t", 7)
movie3 = Movie.new("power", 9)
  

playlist1 = Playlist.new("Simon")
playlist1.load("movies.txt")


loop do
puts "Please enter the number of viewings: (quit/ exit) to exit"
answer = gets.chomp.downcase
case answer
when 'quit', 'exit'
    puts "STATISTICS"
    playlist1.print_stats
    break
else
    puts "Please enter a number or quit"
end
puts "Enjoy the viewings"
playlist1.play(answer.to_i)
end




  