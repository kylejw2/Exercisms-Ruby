module Luhn
    def self.valid?(input)

        # Strings with more than spaces and digits aren't valid
        if input =~ /[^0-9 ]/
            return false
        end

        input = input.gsub(" ", "").split("")
        
        # String of length 1 or less isn't valid
        if input.length < 2
            return false
        end

        input = input.map{|x| x.to_i}.reverse.each_with_index.map {|x, i| i % 2 == 1 ? (x*2 > 9 ? x*2 - 9 : x*2) : x}
        return input.sum % 10 == 0
    end
end