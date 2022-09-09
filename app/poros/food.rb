class Food
   attr_reader :brandOwner, 
               :description, 
               :gtinUpc, 
               :ingredients

   def initialize(attributes)
      @brand_owner = attributes[:brandOwner]
      @description = attributes[:description]
      @gtinUpc = attributes[:gtinUpc]
      @ingredients = attributes[:ingredients]
   end
end
   