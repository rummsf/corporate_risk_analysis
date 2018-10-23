class CompaniesController < ApplicationController
  def index
    search_companies = Search.get_companies("Wework")
    search_directors = Search.get_directors("Elon Musk")
    @companies = JSON.parse(search_companies.body)
    @directors = JSON.parse(search_directors.body)

    #byebug

    company_name = @companies["results"]["companies"][0]["company"]["name"]
    number = @companies["results"]["companies"][0]["company"]["company_number"]
    status = @companies["results"]["companies"][0]["company"]["current_status"]
    jurisdiction_code = @companies["results"]["companies"][0]["company"]["jurisdiction_code"]
    inc_date = @companies["results"]["companies"][0]["company"]["company_number"]
    dissolution_date = @companies["results"]["companies"][0]["company"]["dissolution_date"]
    address = @companies["results"]["companies"][0]["company"]["registered_address_in_full"]

    Company.create(name: company_name, company_number: number, status: status, incorporation_date: inc_date, jurisdiction_code: jurisdiction_code, dissolution_date: dissolution_date, address: address )
  end

end
