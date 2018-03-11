class GetApiService

  def self.call
    response = Net::HTTP.get(URI('http://api.icndb.com/jokes/1'))
    ActiveSupport::JSON.decode(response)
  end

end
