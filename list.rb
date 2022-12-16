require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    counter = 0
    while counter < @list.length
      yield(@list[counter])
      counter += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4, 5)

puts(list.all? { |e| e <= 10 })

puts(list.any? { |e| e < 5 })

puts(list.filter { |e| e < 5 })
