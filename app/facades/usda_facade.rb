class UsdaFacade

  def self.name_search_items(name)
    UsdaService.name_search_items(name).map do |food|
      Food.new(food)
    end
  end

  def self.name_search_total_count(name)
    UsdaService.name_search(name)[:totalHits]
  end

end
