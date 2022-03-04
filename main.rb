require_relative './enumerables'

class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end
end

list = MyList.new(1, 2, 3, 4)

p list.filter(&:even?)
