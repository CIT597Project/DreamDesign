class RecommendeduniversitiesController < ApplicationController
    
 
  def show
    # respond_with(@recommendeduniversity)
    @name=Recommendeduniversity.find_by(:name_abb=>params[:id]).name_abb   #change to name_abb1
    render "recommendeduniversities/#{@name}"
  end

  def new
    @recommendeduniversity = Recommendeduniversity.all
    
  end



end
