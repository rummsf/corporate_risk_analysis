class Search
  def initialize(search)
    @search = search
  end

  def self.get_companies(search)
    response = HTTParty.get("https://api.opencorporates.com/v0.4/companies/search?q=" + search)
  end

  def self.get_directors(search)
    response = HTTParty.get("https://api.opencorporates.com/v0.4/officers/search?q=" + search)
  end
end
