class Node
  attr_accessor :value, :next

  def initialize(value, next_node)
    @value = value
    @next = next_node
  end
end

class LinkedList
  attr_accessor :head, :tail

  def add(value)
    if(@head.nil?)
      @head = Node.new(value, nil)
      @tail = @head
    else
      @tail.next = Node.new(value, nil)
      @tail = @tail.next
    end
  end

  def reverse(list)
    return nil if list.nil?
    prev = nil
    curr = list.head

    while(curr != nil)
      temp = curr.next
      curr.next = prev
      prev = curr
      curr = temp
    end
    list.head = prev
    list
  end

  def display(list)
    return nil if list.nil?
    curr = list.head
    arr = []
    while(curr != nil)
      arr.push(curr.value)
      curr = curr.next
    end
    p arr
  end
end

list = LinkedList.new()
list.add(12)
list.add(99)
list.add(37)

list.display(list)      
list.display(list.reverse(list))
