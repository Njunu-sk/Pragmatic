require_relative 'movie'
require_relative 'w_and_s'
require_relative 'snack_bar'
class Playlist
    def initialize(name)
        @name = name
        @movies = []
    end

    def add_movie(movie)
        @movies << movie
    end

    def load(from_file)
        File.readlines("movies.txt").each do |line|
            title, rank = line.split(",")
            movie = Movie.new(title, rank.to_i)
            add_movie(movie)
        end
    end
    

    def play(viewings)
        snacks = Snackbar::SNACKS
        puts "There are #{snacks.size} snacks in the Snackbar"
        snacks.each do |snack|
            puts "#{snack.name} : #{snack.carbs} carbs"
        end


        puts "#{@name}'s playlist "
        1.upto(viewings) do |count|
        puts "Viewing :#{count}"
        puts @movies.sort

        
        string = "Play method"
        puts string.ljust(30, "*")
        @movies.each do |movie|
            WAndS.review(movie)
            snack = Snackbar.random 
            movie.ate_snack(snack)
            
            
            puts movie.status
        end
       end
    end

    def total_carbs_consumed
        @movies.reduce(0) do |sum,movie|
            sum + movie.carbs_consumed
        end
    end

    def print_stats
        puts "#{@name}'s stats "
        puts "#{total_carbs_consumed} total carbs consumed:::"
        @movies.sort.each do |movie|
        puts "#{movie.title}'s total carbs are: #{movie.carbs_consumed}"
        movie.each_snack do |snack|
            puts "#{snack.carbs} total #{snack.name} carbs"
        end
        end
        hits, flops =@movies.partition { |movie| movie.hit? }
        puts "Hits :"
        puts hits.sort
        puts "Flops :"
        puts flops.sort
    end
end
