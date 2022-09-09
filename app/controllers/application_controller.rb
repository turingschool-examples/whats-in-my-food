class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :api_request

  def api_request
    @search = TmdbSearch.new
  end

end
