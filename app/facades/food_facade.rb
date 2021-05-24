class FoodFacade
  def self.search_results(search_params)
    json = MovieService.fetch_popular_movies
    json.map { |movie_info| MovieInfo.new(movie_info) }
  end