require 'set'

class GraphNode

    attr_accessor :value, :neighbors

    def initialize(val)
        @value = val
        @neighbors = []
    end

    def inspect
        @value.inspect
    end

    def bfs(starting_node, target_value) #BREADth first search hehe
        arr = [starting_node]
        # visited = []
        visited = Set.new

        while arr.length > 0 
            current_node = arr.shift
            unless visited.include?(current_node)
                return current_node.value if current_node.value == target_value
                # visited += current_node
                visited.add(current_node)
                arr += current_node.neighbors
            end
        end
        nil
    end

    # this is from the classwork on friday just using it as reference
    # def bfs(target)
    #     arr = [self]

    #     while arr.length > 0
    #         current_node = arr.shift
    #         if current_node.value == target
    #             return current_node
    #         end
    #         arr += current_node.children
    #     end
    #     nil
    # end
end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

# p a.neighbors
p a.bfs(a,"b")
p a.bfs(a, "f")