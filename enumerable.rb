module MyEnumerable
  def any?
    @list.each { |a| return true if yield a }
    false
  end
  
  def all?
    @list.each { |a| return false unless yield a }
    true
  end
end

