require_relative './enumerables.rb'

class MyList
    include MyEnumerable

    def initialize(*args)
        @list = args
    end
end

list = MyList.new(1, 2, 3, 4)

p list.all? {|e| e < 5}
p list.all? {|e| e > 5}
