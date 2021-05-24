class Food
  attr_reader :description,
              :gtin_upc_code,
              :brand_owner,
              :total_found,
              :ingredients
  def initialize(dish_data, total_found)
    @description = dish_data[:description].titlecase
    @gtin_upc_code = dish_data[:gtinUpc]
    @brand_owner = dish_data[:brandOwner].titlecase if dish_data[:brandOwner]
    @total_found = total_found
    @ingredients = dish_data[:ingredients].present? ? dish_data[:ingredients] : 'Just Sweet Potatoes'
  end
end
