class Food
    attr_reader :hits,
                :gtin_upc,
                :description,
                :brand_owner,
                :ingredients

    def initialize(attributes, total_hits)
        @hits = total_hits
        @gtin_upc = attributes[:gtinUpc]
        @description = attributes[:description]
        @brand_owner = attributes[:brandOwner]
        @ingredients = attributes[:ingredients]
    end
end