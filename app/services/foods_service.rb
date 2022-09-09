class FoodsService
    def self.get_url(url, keyword = nil)
        conn = Faraday.new(url: "https://api.nal.usda.gov/fdc/v1") do |f|
            f.headers[:'x-api-key'] = ENV['api-key']
            f.params[:query] = keyword unless keyword.nil?
        end
        response = conn.get(url)
        JSON.parse(response.body, symbolize_names: true)
    end
end