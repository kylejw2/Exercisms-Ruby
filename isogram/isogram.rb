module Isogram
    def self.isogram?(input)
        word = input.gsub(/\W/, "").split("")
        isogram = true
        word.each_with_object(Hash.new(0)) do |item, hash|
            hash[item.downcase] += 1
            if hash[item.downcase] == 2
                isogram = false
            end
        end
        return isogram
    end
end