module Complement
    COMPLEMENTS = {
        G: "C",
        C: "G",
        T: "A",
        A: "U"
    }
    def self.of_dna(input)
        input = input.split("")
        rna = ""
        input.each do |nucleotide|
            rna += COMPLEMENTS[nucleotide.to_sym]
        end
        return rna
    end
end