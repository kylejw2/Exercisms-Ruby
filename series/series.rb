class Series

    def initialize(series)
        @series = series.split("")
    end

    def slices(num)
        if num > @series.length
            raise ArgumentError.new
        end

        arr = []
        @series.each_with_index do |e, i|
            subarr = @series[i .. i + num - 1]
            str = ""
            subarr.each do |ele|
                str += ele
            end
            if str.length == num
                arr.push(str)
            end
        end
        return arr
    end

end