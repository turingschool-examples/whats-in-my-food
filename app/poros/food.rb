class Food
   attr_reader :brand_owner, 
               :description, 
               :gtin_upc, 
               :ingredients

   def initialize(attributes)
      @brand_owner = attributes[:brandOwner]
      @description = attributes[:description]
      @gtin_upc = attributes[:gtinUpc]
      @ingredients = attributes[:ingredients]
   end
end
   