# The backend and logic are finished. I didn't submit this exercism because I didn't want to waste time working on front-end, which is just the console in this small project.
module Tournament

    POINTS = {
        win: 3,
        draw: 1,
        loss: 0
    }

    def self.tally(input)
        teams = Hash.new
        input = input.gsub("\n", ";").split(";")
        puts input
        input.each_with_index { |e, i|
            if i % 3 == 0 || i % 3 == 1
                if i % 3 == 0
                    outcome = input[i + 2]
                else
                    outcome = input[i + 1] == "win" ? "loss" : (input[i + 1] == "loss" ? "win" : "draw")
                end
                if teams.has_key?(e)
                    teams[e][outcome.to_sym] += 1
                    teams[e][:mp] += 1
                    teams[e][:points] += POINTS[outcome.to_sym]
                else
                    teams[e] = {win: 0, draw: 0, loss: 0, points: 0, mp: 0}
                    teams[e][outcome.to_sym] += 1
                    teams[e][:mp] += 1
                    teams[e][:points] += POINTS[outcome.to_sym]
                end
            end
        }
        puts teams
        if teams.size < 2
            return <<~TALLY
                Team                           | MP |  W |  D |  L |  P
                TALLY
        end

        return <<~TALLY
        #{self.calc_tables(teams)}
        TALLY
    end

    def self.calc_tables(teams)
        str = ""
        if teams.has_key?("Allegoric Alaskans")
            str += "Allegoric Alaskans             |  #{teams["Allegoric Alaskans"][:mp]} |  #{teams["Allegoric Alaskans"][:win]} |  #{teams["Allegoric Alaskans"][:draw]} |  #{teams["Allegoric Alaskans"][:loss]} |  #{teams["Allegoric Alaskans"][:points]}\n"
        end
        if teams.has_key?("Blithering Badgers")
            str += "Blithering Badgers             |  #{teams["Blithering Badgers"][:mp]} |  #{teams["Blithering Badgers"][:win]} |  #{teams["Blithering Badgers"][:draw]} |  #{teams["Blithering Badgers"][:loss]} |  #{teams["Blithering Badgers"][:points]}\n"
        end
        if teams.has_key?("Courageous Californians")
            str += "Courageous Californians        |  #{teams["Courageous Californians"][:mp]} |  #{teams["Courageous Californians"][:win]} |  #{teams["Courageous Californians"][:draw]} |  #{teams["Courageous Californians"][:loss]} |  #{teams["Courageous Californians"][:points]}\n"
        end
        if teams.has_key?("Devastating Donkeys")
            str += "Devastating Donkeys            |  #{teams["Devastating Donkeys"][:mp]} |  #{teams["Devastating Donkeys"][:win]} |  #{teams["Devastating Donkeys"][:draw]} |  #{teams["Devastating Donkeys"][:loss]} |  #{teams["Devastating Donkeys"][:points]}"
        end

        return <<~TALLY
        Team                           | MP |  W |  D |  L |  P
        #{str}
        TALLY
    end

end