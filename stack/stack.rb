require_relative "stacklike"
class Stack
    include Stacklike
end
s1 = Stack.new  
  s1.load("simon")
  s1.load("peter")
  s1.load("mike")
  puts "Objects added to the stack"
  puts s1.stack
  puts "Removing an object from slack"
  s1.unload
  puts s1.stack