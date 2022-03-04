module MyEnumerable
  def all?(&block)
    flag = false
    @list.each do |item|
      unless block.call(item)
        flag = false
        break
      end
      flag = true
    end
    flag
  end

  def any?(&block)
    flag = false
    @list.each do |item|
      if block.call(item)
        flag = true
        break
      end
    end
    flag
  end

  def filter(&block)
    result = []
    @list.each do |item|
      result << item if block.call(item)
    end
    result
  end
end
