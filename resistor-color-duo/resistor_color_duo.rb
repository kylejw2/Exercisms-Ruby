class ResistorColorDuo
    @bank = ["Black", "Brown", "Red", "Orange", "Yellow", "Green", "Blue", "Violet", "Grey", "White"]
    
    def self.value(colors)
        first = colors.at(0)
        second = colors.at(1)
        return (@bank.index(first.capitalize).to_s + @bank.index(second.capitalize).to_s).to_i
    end
end