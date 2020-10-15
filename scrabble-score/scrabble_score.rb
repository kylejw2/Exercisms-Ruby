class Scrabble

    BANK = {
        1 => %w(A E I O U L N R S T),
        2 => %w(D G),
        3 => %w(B C M P),
        4 => %w(F H V W Y),
        5 => %w(K),
        8 => %w(J X),
        10 => %w(Q Z)
    }.freeze

    def initialize(word)
        @word = word
    end

    def self.score(word)
        new(word).score # this is equivalent to Scrabble.new(word).score
    end

    def score
        points = 0
        if @word == nil
            return points
        end
        @word = @word.split("")
        @word.each do |letter|
            points += BANK.select{|k, v| v.include?(letter.upcase)}.keys.sum
        end
        return points
    end

end