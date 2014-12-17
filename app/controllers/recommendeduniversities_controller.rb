class RecommendeduniversitiesController < ApplicationController
    
 
  def show
    # respond_with(@recommendeduniversity)
    @name=Recommendeduniversity.find_by(:name_abb=>params[:id]).name_abb   #change to name_abb1
    render "recommendeduniversities/#{@name}"
  end

  def new
    @recommendeduniversity = Recommendeduniversity.all
    
  end

 

  private
    

    def recommendeduniversity_params
      params.require(:recommendeduniversity).permit(:institution_name, :institution_address, :institution_city, :institution_state, :institution_zip, :institution_web_address)
    end
end
