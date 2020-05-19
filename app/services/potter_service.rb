class PotterService

  def search_pheonix_members(house)
    response = conn.get("characters?key=#{ENV['POTTER_KEY']}") do |faraday|
      faraday.params['house'] = house
      faraday.params['orderOfThePhoenix'] = true
    end
  end

  private

  def conn
    Faraday.new(url: 'https://www.potterapi.com/v1/')
  end

  def get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
