require_relative 'movie'
class Playlist
    def initialize(name)
        @name = name
        @movies = []
    end
    def add_movie(movie)
        @movies << movie
    end
    def play
        puts "#{@name}'s playlist "
        puts @movies
    end
end
# ply1 = Playlist.new("Silvester")
# ply1.play
# ply1.add_movie("Karate")
# ply1.play

