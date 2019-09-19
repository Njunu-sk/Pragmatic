#the times method

class Integer
    def times
        i = 0
        while i < self
            yield i
            i += 1
        end
    end
end

10.times { |n| puts "Looping #{n}"}