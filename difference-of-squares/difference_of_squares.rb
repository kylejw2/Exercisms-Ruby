class Squares
    attr_accessor :square_of_sum, :sum_of_squares

    def initialize(num)
        @square_of_sum = ((1..num).inject { |sum, n| sum + n })**2
        @sum_of_squares = (1..num).inject { |sum, n| sum + n**2 }
    end
    
    def difference
        return @square_of_sum - @sum_of_squares
    end
end