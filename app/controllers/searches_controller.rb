class SearchesController < ApplicationController

  def destroy
    @searches.destroy
    redirect_to ingredients_path
  end

end
