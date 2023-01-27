module MyEnumerable
  def any?
    @list.each { |a| return true if yield a }
    false
  end

  def all?
    @list.each { |a| return false unless yield a }
    true
  end

  def filter
    result = []
    @list.each do |a|
      result.push(a) if yield a
    end
    result
  end
end
