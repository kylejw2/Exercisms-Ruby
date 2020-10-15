module Hamming

    def self.compute(str1, str2)
        # Check to see if the strings are comparable in length
        if str1.length != str2.length
            raise ArgumentError
        end
        # Compare at O(n) time
        first = str1.split("")
        errors = 0
        first.each_with_index do |letter, i|
            if letter != str2[i]
                errors += 1
            end
        end
        return errors
    end
end