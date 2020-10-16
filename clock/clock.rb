class Clock

    def initialize(input)
        @minutes = 0
        @hours = 0
        if input.has_key?(:minute)
            @minutes += input[:minute]
        end
        if input.has_key?(:hour)
            @hours += input[:hour]
        end
    end

    def validate
        while @minutes >= 60
            @hours += 1
            @minutes -= 60
        end
        while @minutes < 0
            @hours -= 1
            @minutes += 60
        end
        while @hours >= 24
            @hours -= 24
        end
        while @hours < 0
            @hours += 24
        end
    end

    def to_s
        self.validate
        if @hours < 10
            hour = "0#{@hours}"
        else
            hour = @hours
        end
        if @minutes < 10
            minute = "0#{@minutes}"
        else
            minute = @minutes
        end
        return "#{hour}:#{minute}"
    end

    def +(other)
        @minutes += other.to_s[3..4].to_i
        @hours += other.to_s[0..1].to_i
        self.to_s
    end

    def -(other)
        @minutes -= other.to_s[3..4].to_i
        @hours -= other.to_s[0..1].to_i
        self.to_s
    end

    def ==(other)
        self.to_s == other.to_s
    end

end