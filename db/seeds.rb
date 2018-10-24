# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed Companies from API

def create_company(name)
  search_companies = Search.get_companies(name)
  companies = JSON.parse(search_companies.body)
  #byebug
  companies["results"]["companies"].each do |company|
    company_name = company["company"]["name"]
    number = company["company"]["company_number"]
    status = company["company"]["current_status"]
    jurisdiction_code = company["company"]["jurisdiction_code"]
    inc_date = company["company"]["company_number"]
    dissolution_date = company["company"]["dissolution_date"]
    address = company["company"]["registered_address_in_full"]
    Company.create(name: company_name, company_number: number, status: status, incorporation_date: inc_date, jurisdiction_code: jurisdiction_code, dissolution_date: dissolution_date, address: address, location_id: 1 )
  end
end



company_names = ["Paypal"]
#, "Apple Inc", "Facebook", "Paypal", "Flatiron School", "Wework", "Linkedin", "Microsoft", "Amazon"]

company_names.each do |name|
  create_company(name)
end

# Seed Directors from API

#def create_director(name)
#  search_directors = Search.get_directors(name)
#  directors = JSON.parse(search_directors.body)
#  directors["results"]["officers"].each do |director|
#    director_name = director["officer"]["name"]
#    director_jurisdiction_code = director["officer"]["jurisdiction_code"]
#    position = director["officer"]["position"]
#    occupation = director["officer"]["occupation"]
#    company_name = director["officer"]["company"]["name"]
#    company_number = director["officer"]["company"]["company_number"]
#    Director.create(name: director_name, jurisdiction_code: director_jurisdiction_code, position: position, occupation: occupation, company_name: company_name, company_number: company_number)
#  end
#end
#
#
#
#director_names = ["Tim Cook", "Mark Zuckerberg", "Elon Musk", "Jeff Bezos", "Peter Thiel", "Jeff Weiner", "Adam Neumann", "Bill Gates", "Bill Gates", "Adam Enbar", "Larry Page", "Sergey Brin"]
#
#director_names.each do |name|
#  create_director(name)
#end



  #search_companies = Search.get_companies("Google")
  #@companies = JSON.parse(search_companies.body)
  #@companies["results"]["companies"].each do |company|
  #  company_name = company["company"]["name"]
  #  number = company["company"]["company_number"]
  #  status = company["company"]["current_status"]
  #  jurisdiction_code = company["company"]["jurisdiction_code"]
  #  inc_date = company["company"]["company_number"]
  #  dissolution_date = company["company"]["dissolution_date"]
  #  address = company["company"]["registered_address_in_full"]
  #  Company.create(name: company_name, company_number: number, status: status, incorporation_date: inc_date, jurisdiction_code: jurisdiction_code, dissolution_date: dissolution_date, address: address )
  #end

  #search_companies = Search.get_companies("Apple Inc")
  #search_companies = Search.get_companies("Facebook")
  #search_companies = Search.get_companies("Paypal")
  #search_companies = Search.get_companies("Flatiron School")
  #search_companies = Search.get_companies("Wework")
  #search_companies = Search.get_companies("Linkedin")
  #search_companies = Search.get_companies("Microsoft")


  #search_directors = Search.get_directors("Elon Musk")
  #@companies = JSON.parse(search_companies.body)
  #@directors = JSON.parse(search_directors.body)

  ##byebug

  #company_name = @companies["results"]["companies"][0]["company"]["name"]
  #number = @companies["results"]["companies"][0]["company"]["company_number"]
  #status = @companies["results"]["companies"][0]["company"]["current_status"]
  #jurisdiction_code = @companies["results"]["companies"][0]["company"]["jurisdiction_code"]
  #inc_date = @companies["results"]["companies"][0]["company"]["company_number"]
  #dissolution_date = @companies["results"]["companies"][0]["company"]["dissolution_date"]
  #address = @companies["results"]["companies"][0]["company"]["registered_address_in_full"]

  #Company.create(name: company_name, company_number: number, status: status, incorporation_date: inc_date, jurisdiction_code: jurisdiction_code, dissolution_date: dissolution_date, address: address )
