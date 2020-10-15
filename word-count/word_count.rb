class Phrase

    attr_accessor :word_count

    def initialize(words)
        self.word_count = {}
        phrase = words.split(/[^'\w]+/)
        phrase.each do |word|
            if word != ""
                if word[word.length - 1] == "'"
                    word = word[0..word.length - 2]
                end
                if word[0] == "'"
                    word = word[1..word.length-1]
                end
                if self.word_count.has_key?(word.downcase)
                    self.word_count[word.downcase] += 1
                else
                    self.word_count[word.downcase] = 1
                end
            end
        end
        return self.word_count
    end

end