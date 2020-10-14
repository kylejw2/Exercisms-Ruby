class HighScores

    attr_accessor :scores

    def initialize(scores)
        @scores = scores
    end

    def latest
        scores.last
    end

    def personal_best
        high = scores[0]
        scores.each do |score|
            if score > high
                high = score
            end
        end
        high
    end

    def personal_top_three
        if scores.length > 2
            top_three = Array.new(3) {0}
        else
            top_three = Array.new(scores.length) {0}
        end

        scores.each do |score|
            if score > top_three[0]
                top_three.unshift(score)
                top_three.pop
            elsif score > top_three[1]
                top_three.insert(1, score)
                top_three.pop
            elsif score > top_three.last
                top_three.pop
                top_three.push(score)
            end
        end
        return top_three
    end

    def latest_is_personal_best?
        if self.latest == self.personal_best
            return true
        else
            return false
        end
    end
    
end