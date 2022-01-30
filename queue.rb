require_relative 'node'

class Queue
    attr_accessor :head, :tail

    def initialize
        @head = nil
        @tail = nil
    end

    def is_empty?
        @head.nil?
    end

    def peek
        @head.value
    end

    def add(value)
        # add to the tail
        node = Node.new(value)

        if !@tail.nil?
            @tail.next = node
        end

        @tail = node
        @head = node if @head.nil?
    end

    def remove
       value = @head.value 
       @head = @head.next

       if @head.nil? 
        @tail = nil
       end

       value
    end
end