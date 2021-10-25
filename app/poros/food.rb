class Food
  attr_reader :upc, :description, :brand_owner, :ingredients

  def initialize(params)
    @upc = params[:gtinUpc]
    @description = params[:description]
    @brand_owner = params[:brandOwner]
    @ingredients = params[:ingredients]
  end
end

# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
