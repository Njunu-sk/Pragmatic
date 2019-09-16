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

    context "with a rank of a least 6" do
        before do
            @movie = Movie.new("gotham", 6)
        end

        it "is a hit " do
            @movie.hit?.should == true
        end

        it "is a hit status " do
            @movie.status.should == "Hit"
        end
    end

    context "with a rank of less than 6" do
        before do
            @movie = Movie.new("gotham", 5)
        end

        it "is not a hit " do
            @movie.hit?.should == false
        end

        it "is a flop status " do
            @movie.status.should == "Floop"
        end
    end
end