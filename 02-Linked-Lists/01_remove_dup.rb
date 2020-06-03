# Write code to remove duplicates from an unsorted linked lists
class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  def initialize(node)
    @head = node
  end

  def remove_duplicates(head)
    head.value
    head.next
    values = {}
    while !head.next do
      if values[head.value] && prev
        prev.next = head.next
      else
        values[head.value] = 1
      end
      prev = head
      head = head.next
    end
  end
end

