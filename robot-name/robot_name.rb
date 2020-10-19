class Robot
    attr_accessor :name

    ALPHABET = %w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
    NAMES_USED = [""]

    def initialize
        assign_name
    end

    def reset
        assign_name
    end

    def assign_name
        name = ""
        while NAMES_USED.include?(name)
            name = ""
            2.times {name += ALPHABET[rand(26)]}
            3.times {name += rand(9).to_s}
        end
        @name = name
        NAMES_USED.push(name)
    end
end