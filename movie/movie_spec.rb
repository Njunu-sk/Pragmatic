require_relative 'movie'
require_relative 'playlist'
describe Movie do
    before do
        @initial_rank = 6
        @movie = Movie.new("gotham", @initial_rank)
    end

    it "has a capitalized title" do
    @movie.title.should == "Gotham"
    end

    it "has an initial rank" do
    @movie.rank.should == 6
    end

    it "has a string representation" do
    @movie.to_s.should == "Gotham,has a rank of 6"
    end
    it "has a thump_up" do
    @movie.thump_up

    @movie.rank.should == @initial_rank + 1
    end
    it "has athump_down" do
    @movie.thump_down

    @movie.rank.should == @initial_rank - 1    
    end


    context "created with default rank" do
        before do
            @movie = Movie.new("gotham")
        end

    it "has a default rank of zero" do
        @movie.rank.should == 0
    end
    end
end