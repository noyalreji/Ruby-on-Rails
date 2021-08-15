require_relative 'human'

class Samurai < Human

    @@num_samurai = 0
    def initialize
        super
        @health = 200
        @@num_samurai += 1
    end

    def death_blow(obj)
        if obj.class.ancestors.include?(Human)
            obj.health = 0
            true
          else
            false
        end
    end

    def meditate
        @health = 200
    end

    def how_many
        puts "there are #{@@count} samurai's"
    end
end

# samurai1 = Samurai.new
# samurai2 = Samurai.new
# puts samurai1.death_blow(samurai2)
# puts samurai2.health
# puts samurai2.death_blow("Samurai Not Found")