class DirectorsController < ApplicationController
  def index
    authorized?
    respond_to do |format|
      if params[:term]
        @directors = Director.search_by_name(params[:term]).with_pg_search_highlight
      else
        @directors = Director.all
      end
      format.json
      format.html
    end
  end

  def show
    authorized?
    @director = Director.find(params[:id])
  end


  private
  def director_params
    params.require(:director).permit(:name, :term)
  end
end
