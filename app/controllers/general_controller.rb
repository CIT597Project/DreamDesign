
class GeneralController < ApplicationController
require 'csv' 
  

  def ranking
     @schools=School.all.select(:Institution_ID, :follow, :Institution_Name, :Institution_Address, :Institution_City, :Institution_State, :Institution_Zip,
   :Institution_Phone, :Institution_Web_Address, :Accreditation_Status).uniq.paginate(page: params[:page])
  end
  
  def hot_ranking
    @schools=School.all.select(:Institution_ID, :follow, :Institution_Name, :Institution_Address, :Institution_City, :Institution_State, :Institution_Zip,
  :Institution_Phone, :Institution_Web_Address, :Accreditation_Status).uniq.order(:follow).reverse_order.paginate(page: params[:page])
    render 'general/ranking'
  end
    
  
  def index
    @schools = School.search(params[:search]).select(:Institution_ID, :follow, :Institution_Name, :Institution_Address, :Institution_City, :Institution_State, :Institution_Zip,
  :Institution_Phone, :Institution_Web_Address, :Accreditation_Status).uniq.order(:Institution_Name).paginate(:page=>params[:page])
    render 'general/ranking'
  end
 
  def add_following
    @users=User.all
  end
    

  
end
