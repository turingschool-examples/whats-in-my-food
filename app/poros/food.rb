class Food 
    attr_reader :total_hits, :description, :code, 
                :brand_owner, :ingredients
    
    def initialize(data, total_hits)
        @total_hits = total_hits 
        @description = data[:description]
        @code = data[:gtinUpc]
        @brand_owner = data[:brandOwner]
        @ingredients = data[:ingredients]
    end 
end 