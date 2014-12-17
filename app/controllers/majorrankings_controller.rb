class MajorrankingsController < ApplicationController
 

  def show
    # respond_with(@majorrankings)
    @name=Majorranking.find_by(:name_abb=>params[:id]).name_abb
    render "majorrankings/#{@name}"
     
  end


  def new
    @majorrankings=Majorranking.all
  end
  
  
  
  

end
