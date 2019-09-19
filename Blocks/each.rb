#breaking down the each loop

class Array
    def each 
        i = 0
        while i < self.size
            yield self[i]
            i +=1
        end
        self
    end
end


students = ["Simon", "Samuel", "John", "Weldon"]
students.each  { |n| puts "#{n}" }.map { |n| puts "#{n.upcase}" }