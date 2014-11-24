
class GeneralController < ApplicationController
require 'csv' 
  

  def ranking
    # @schools = School.paginate(:page=>params[:page])
    # CSV.foreach("Accreditation_2014_10 copy.csv", :headers => true) do |row|
#       School.create!(row.to_hash)
#     end
     @schools=School.all.select(:Institution_ID, :follow, :Institution_Name, :Institution_Address, :Institution_City, :Institution_State, :Institution_Zip,
   :Institution_Phone, :Institution_Web_Address, :Accreditation_Status).uniq.paginate(page: params[:page])
  
  end
  
  def hot_ranking
    @schools=School.all.select(:Institution_ID, :follow, :Institution_Name, :Institution_Address, :Institution_City, :Institution_State, :Institution_Zip,
  :Institution_Phone, :Institution_Web_Address, :Accreditation_Status).uniq.order(:follow).reverse_order.paginate(page: params[:page])
    render 'general/ranking'
  end
    
  
  def index
    # @schools = School.search(params[:search])
    @schools = School.search(params[:search]).select(:Institution_ID, :follow, :Institution_Name, :Institution_Address, :Institution_City, :Institution_State, :Institution_Zip,
  :Institution_Phone, :Institution_Web_Address, :Accreditation_Status).uniq.order(:Institution_Name).paginate(:page=>params[:page])
    # @searchresult=School.find_by(Institution_ID:100016).select(:Institution_ID, :Institution_Name, :Institution_Address, :Institution_City, :Institution_State, :Institution_Zip,
#   :Institution_Phone, :Institution_OPEID, :Institution_IPEDS_UnitID, :Institution_Web_Address, :Accreditation_Status).uniq
render 'general/ranking'
  end
  # rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
#
#     private
#
#     def record_not_found
#       redirect_to action: :ranking
#     end
    

  
end
