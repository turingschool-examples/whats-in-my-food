class Food 
attr_reader :gtin_code, :description, :brand, :ingredients

    def initialize(data) 
        @gtin_code = data[:gtinUpc] 
        @description = data[:description]
        @brand = data[:brandOwner]
        @ingredients = data[:ingredients] 
    end
end