class DirectorsController < ApplicationController
  def index
    #@directors = Director.all
    @directors = Director.search(params[:q])


  end

  def show
    @director = Director.find(params[:id])
  end


  private
  def director_params
    params.require(:director).permit(:name)
  end
end
