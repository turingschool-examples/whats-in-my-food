class FoodsService
    def self.get_url(url, keyword = nil)
        conn = Faraday.new(url: "https://api.nal.usda.gov") do |f|
            f.headers[:'x-api-key'] = ENV['api_key']
            f.params[:query] = keyword unless keyword.nil?
        end
        response = conn.get(url)
        JSON.parse(response.body, symbolize_names: true)
    end

    def self.search(keyword)
        get_url("/fdc/v1/foods/search?", keyword)[:foods]
    end

    def self.search_count(keyword)
        get_url("/fdc/v1/foods/search?", keyword)
    end
end