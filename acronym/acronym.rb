class Acronym
    def self.abbreviate(str)
        words = str.split(" ")
        acronym = ""
        words.each do |word|
            hyphen_words = word.split("-")
            hyphen_words.each do |word_ready|
                acronym += word_ready[0].capitalize
            end
        end
        return acronym
    end
end