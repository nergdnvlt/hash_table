require './lib/node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      @head.next_node = Node.new(data)
    end
  end

  def count
    current_node = @head
    if current_node == nil
      return count = 0
    elsif current_node.next_node == nil
      return count = 1
    else
      count = 1
      until current_node.next_node == nil
        current_node = current_node.next_node
        count += 1
      end
    end
    count
  end
end
