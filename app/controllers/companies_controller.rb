class CompaniesController < ApplicationController
  def index
    authorized?
    respond_to do |format|
      if params[:term]
        @companies = Company.search_by_name(params[:term]).with_pg_search_highlight
        Search.create(query: params[:term], user_id: session[:user_id], search_type: "Company", result_count: @companies.size)
      else
        @companies = Company.all
      end
      format.json
      format.html
    end
    @searches = Search.all
  end

  def show
  authorized?
  @company = Company.find(params[:id])
  end


  private
  def company_params
  params.require(:company).permit(:name, :term)
  end

end
