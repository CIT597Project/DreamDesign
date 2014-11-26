
class GeneralController < ApplicationController
  

  def ranking
     @schools=School.all.paginate(page: params[:page]).limit(25)
  end
  
  def hot_ranking
    @schools=School.order(:follow).reverse_order.limit(25)
    render 'general/hotuniversities'
  end
    
  
  def index
    @schools = School.search(params[:search]).order(:Institution_Name).paginate(:page=>params[:page])
    render 'general/ranking'
  end
 
  def add_following
    @users=User.all.paginate(page: params[:page])
  end
  
 
    

  
end
