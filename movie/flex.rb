require_relative 'playlist'
require_relative 'movie'
movie1 = Movie.new("gotham", 6)
movie2 = Movie.new("g.o.t", 7)
movie3 = Movie.new("power", 9)
  

playlist1 = Playlist.new("Simon")
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)
playlist1.play()
string = "movie"
 p string.center(30, '*')
movie4 = Movie.new("power", 3)
playlist2 = Playlist.new("Kamande")
playlist2.add_movie(movie4)
playlist2.play()
  