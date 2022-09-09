class Food
    attr_reader :name, :code, :brand, :ingredients

    def initialize(food_data)
        @name = food_data[:description]
        @code = food_data[:fdcId]
        @brand = food_data[:brandOwner]
        @ingredients = food_data[:ingredients]
    end
end