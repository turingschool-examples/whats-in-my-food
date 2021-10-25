class Food
  attr_reader :gtinUpc, :description, :brand_owner, :ingredients

  def initialize(params)
    @gtinUpc = params[:gtinUpc]
    @description = params[:description]
    @brand_owner = params[:brand_owner]
    @ingredients = params[:ingredients]
  end
end
