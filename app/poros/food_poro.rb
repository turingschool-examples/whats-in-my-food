class FoodPoro
  attr_reader :fcdid, :description, :brand, :ingredients, :gtinupc, :total_items

  def initialize(data)
    @fcdid = data[:fcdId]
    @description = data[:description]
    @brand = data[:BrandOwner]
    @ingredients = data[:ingredients]
    @gtinucp = data[:gtinUpc]
    @total_items = data.count
  end
end
