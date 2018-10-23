class CompaniesController < ApplicationController
  def index
    search_object = Search.new(params[:q])
    @companies = JSON.parse(search_object.get_data.body)
  end
end
