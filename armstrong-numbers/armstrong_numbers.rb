module ArmstrongNumbers

    def self.include?(num)
        arr = num.to_s.split("")
        return num == arr.inject(0) { |sum, n| sum + n.to_i**arr.length }
    end

end