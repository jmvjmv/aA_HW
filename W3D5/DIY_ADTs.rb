#Exercise 1 - Stack
 class Stack

    attr_reader :arr

    def initialize
      # create ivar to store stack here!
      @arr = []
    end

    def push(el)
      # adds an element to the stack
      arr << el
    end

    def pop
      # removes one element from the stack
      arr.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      arr[-1]
    end
  end

#   #LIFO Last In, First Out
#   a = Stack.new
#   a.push(1)
#   a.push(2)
#   p a.peek #2
#   a.pop
#   p a.peek #1


#Exercise 2 - Queue
class Queue

    attr_reader :arr

    def initialize
        @arr = []
    end

    def enqueue(el)
        arr << el
    end

    def dequeue
        arr.shift
    end

    def peek
        arr[0]
    end
end

# #First In, First Out
# b = Queue.new
# b.enqueue(1)
# b.enqueue(2)
# b.enqueue(3)
# p b.peek #1
# b.dequeue
# p b.peek #2

class Map 

    attr_reader :arr

    def initialize
        @arr = []
    end

    def set(key, value)
        pair_idx = arr.index { |pair| pair[0] == key }
        if pair_idx 
            arr[pair_idx][1] = value
        else
            arr.push([key, value])
        end
    end

    def get(key)
        arr.each { |pair| return pair[1] if pair[0] == key }
    end

    def delete(key)
        value = get(key)
        arr.reject! { |pair| pair[0] == key }
    end

    def show
        @arr
    end

end

# c = Map.new
# c.set(1,2)
# c.set(2,3)
# c.set(3,4)
# p c.show #arr
# p c.get(1) #2
# c.delete(2)
# p c.show #arr w/o 2 key 