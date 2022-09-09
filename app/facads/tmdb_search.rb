class TmdbSearch

  def service
    TmdbService.new
  end

  def keyword(name)
    @_search = JSON.parse(service.get_url.get("/fdc/v1/foods/search?query#{name}").body, symbolize_names: true)
  end

end
