require_relative 'refactor'

def with_checking(description)
    puts "Checking #{description}"
    result = yield
    if result
        puts "OK"
    else
        puts "FAILED"
    end
end
sensor = Sensor.new
with_checking("temperature") { sensor.temperature < 150 }
with_checking("level") { sensor.level < 5 }