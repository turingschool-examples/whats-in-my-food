class FoodsServicer
  attr_reader :client

  def initialize(client = FoodsClient)
    @client = client
  end

  def search(food)
    results = client.search_foods(food)[:foods].map do |data|
      Food.new(data)
    end
    results[0..9]
  end

  def get_total_hits(food)
    client.search_foods(food)[:totalHits]
  end
end
