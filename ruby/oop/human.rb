class Human
    attr_accessor :strength, :intelligence, :stealth, :health
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end
    def attack(object)
        if object.class.ancestors.include?(Human)
            object.health -= 10
            true
        else
            false
        end
    end
end

h = Human.new
h1 = Human.new
puts h.attack(man23)
puts h.attack("Corona")

puts h1.health 