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
end