class Sensor
    def temperature
        rand(100..200)
    end

    def level
        rand(1..6)
    end
end
sensor = Sensor.new
if __FILE__ == $0
    puts "Checking temperature level"
    if sensor.temperature < 150
        puts "OK"
    else
        puts "FAILED"
    end

    puts "Checking the water level"
    if sensor.level < 4
        puts "OK"
    else
        puts "FAILED"
    end
end