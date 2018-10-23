class Search
def initialize(query)
  @query = query
end

  def get_companies
    response = HTTParty.get("https://api.opencorporates.com/v0.4/companies/search?q=" + @query)
  end

  def get_directors
    response = HTTParty.get("https://api.opencorporates.com/v0.4/officers/search?q=" + @query)
  end
end
