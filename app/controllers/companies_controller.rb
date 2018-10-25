class CompaniesController < ApplicationController
  def index
    authorized?
    respond_to do |format|
      if params[:term]
        @companies = Company.search_by_name(params[:term]).with_pg_search_highlight
      else
        @companies = Company.all
      end
      format.json
      format.html
    end
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
