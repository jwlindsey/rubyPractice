class LinkedListNode
  attr_accessor :value, :next_node

  def initialize (value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil

  end

  #Push a value onto the Stack
  def push(value)
    self.pop
  end

  #Pop an item off the Stack
  #Remove the last item that was pushed onto the
  #stack and return the value to the user

  def pop
    data.pop
    puts "push.value"?
  end
end

def reverse_list(list)
  #add code here

  while list
    #add code here
    #list.value something
    list = list.next_node
  end

  # add more code here
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "------"

revlist = reverse_list(node3)

print_values(revlist)
