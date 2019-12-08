class GraphNode

    attr_accessor :value, :neighbors

    def initialize(val)
        @value = val
        @neighbors = []
    end

    def inspect
        @neighbors.inspect
    end



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

p a
p c