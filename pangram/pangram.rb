module Pangram
    def self.pangram?(sentence)
        letters = []
        sentence = sentence.gsub(/[^a-zA-Z]/, "").split("")
        sentence.each do |letter|
            unless letters.include?(letter.downcase)
                letters.push(letter)
            end
        end
        letters.length == 26
    end
end