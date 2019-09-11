require_relative "stacklike"
require_relative "suitcase"
class Cargohold
    include Stacklike
    def load_and_report(obj)
        puts "Adding a suitcase to the cargo hold"
        # puts obj.object_id
        load(obj)
    end
    def unload_and_report
        puts "unloading from the cargo hold"
        unload
    end
end
ch = Cargohold.new
sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new
sc4 = Suitcase.new


puts ch.load_and_report(sc1)
puts ch.load_and_report(sc2)
puts ch.load_and_report(sc3)
puts ch.load_and_report(sc4)

puts ch.unload_and_report


