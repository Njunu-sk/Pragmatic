module Stacklike
    def stack
        @stack ||= [] 
    end
    def load(obj)
        stack << (obj)
    end
    def unload
        stack.pop
    end
end
