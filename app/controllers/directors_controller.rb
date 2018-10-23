class DirectorsController < ApplicationController

  def index
    search_object = Search.new("query")
    @directors = JSON.parse(search_object.get_data.body)
  end

  def show
    @director = Director.find(params[:id])
  end

# A user can search a director name and retrieve all associated companies
  def companies
    @companies = Company.all
    @director.name.companies
  end

# A user can search by director name and location
  def search
  #store all the directors that match the name searched
    @directors = Director.where("name LIKE ? ", "%#{params[:director]}%")
  end

# A user can search by director name and date of birth
# A user can sort director data by age
# A user can sort director data by location
# A user can search a director’s name and view sanctions data if present, views error message if not
  private

  def director_params
    params.require(:director).permit(:search)
  end
end
