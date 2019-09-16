require_relative "playlist"

describe do

    before do
        @playlist = Playlist.new("Simon")
    end

    context "being played with one movie" do
        before do
            @initial_rank = 6
            @movie = Movie.new("gotham", @initial_rank)
            @playlist.add_movie(@movie)  
        end
        
        it "gives movie a thumps up if a high number is rolled" do
            @playlist.play

            @movie.rank.should == @initial_rank + 1
        end

        it "gives movie an initial rank when number is medium" do
            @playlist.play

            @movie.rank.should == @initial_rank
        end

        it "gives movie a thumps down if a low number is rolled" do
            @playlist.play

            @movie.rank.should == @initial_rank - 1
        end
end