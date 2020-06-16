class Martini
    attr_accessor :name, :glass, :ingredients, :instructions

    @@all = []

    def initialize(name: nil,  glass: nil, ingredients: nil, instructions: nil)
        self.name = name
        self.glass = glass
        self.ingredients = {}
        self.instructions = instructions
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end
