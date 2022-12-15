module MyEnumerable
  def all?
    @list.each do |e|
      if yield e
  end

  def any?
  end

  def filter
  end
end
