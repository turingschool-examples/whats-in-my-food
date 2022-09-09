class Food
    attr_reader :name

    def initialize(food_data)
        @name = food_data[:description]
    end
end