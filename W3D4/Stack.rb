class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[0]
    end

end

class Queue
    def initialize
        @stack = []
    end
    
    def enqueue(el)
        @stack.unshift(el)
    end

    def dequeue
        @stack.delete(@stack[0])
    end

    def peek
        @stack[0]
    end

    def print
        p @stack
    end
end

class Map
    def initialize
        @stack = []
    end

    def set(key, val)
        return @stack << [key, val] if @stack.empty?
        @stack.each_with_index do |sub_stack, i|
            if sub_stack.include?(key)
                return @stack[i] = [key, val]
            else
                return @stack << [key, val]
            end
        end
    end

    def get(key)
        @stack.each do |sub_stack|
            return sub_stack if sub_stack.include? key
        end
    end

    def delete(key)
        @stack.each_with_index do |sub_stack, i|
            if sub_stack.include?(key)
                @stack.delete(@stack[i])
            end
        end
    end

    def show
        @stack
    end
end
