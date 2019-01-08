class DirectorsController < ApplicationController
  def index
    authorized?
    respond_to do |format|
      if params[:term]
        # byebug
        @directors = Director.search_by_name(params[:term]).with_pg_search_highlight
        Search.create(query: params[:term], user_id: session[:user_id], search_type: 'Director', result_count: @directors.size)
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
