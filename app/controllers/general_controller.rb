
class GeneralController < ApplicationController
require 'csv' 
  

  def ranking
     @schools=School.all.paginate(page: params[:page])
  end
  
  def hot_ranking
    @schools=School.all.order(:follow).reverse_order.paginate(page: params[:page])
    render 'general/ranking'
  end
    
  
  def index
    @schools = School.search(params[:search]).order(:Institution_Name).paginate(:page=>params[:page])
    render 'general/ranking'
  end
 
  def add_following
    @users=User.all
  end
  
 
    

  
end
