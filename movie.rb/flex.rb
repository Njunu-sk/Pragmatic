require_relative 'playlist'
require_relative 'movie'
movie1 = Movie.new("Gotham", 6)
movie2 = Movie.new("G.O.T", 7)
movie3 = Movie.new("Power", 9)
  

playlist1 = Playlist.new("Simon")
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)
playlist1.play
