require_relative 'enumerable'

class MyList
  include MyEnumerable
  
  def initialize(*list)
    @list = list
  end

  def each
    count = 0
    while count < @list.length
      yield @list[count]
      count += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)

list.each do |e|
  puts e
end

# # Test #all?
# list.all? {|e| e < 5}
# list.all? {|e| e > 5}

# # Test #any?
# list.any? {|e| e == 2}
# list.any? {|e| e == 5}

# # Test #filter
# list.filter {|e| e.even?}
