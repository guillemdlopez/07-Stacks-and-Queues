require_relative 'node'

class Stack
    def initialize
        @top = nil
    end

    def is_empty?
        @top.nil?
    end

    def peek
        @top.value
    end

    def push(value)
        node = Node.new(value)
        node.next = @top
        @top = node
    end

    def pop
        value = @top.value
        @top = @top.next
        value
    end
end

stack = Stack.new
stack.push(5)
stack.push(10)
p stack