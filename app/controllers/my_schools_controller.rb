class MySchoolsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @my_school = MySchool.new(my_school_params)
    @my_school.user_id = current_user.id
    @my_school.name = School.find_by(id:@my_school.school_id).Institution_Name
    @my_school.save
    if @my_school
        redirect_to mylist_path
    else
      redirect_to root_path
    end
  end
  
  def addSchool
    @my_school = MySchool.new
    @my_school.user_id = current_user.id
    @my_school.name = params[:name]
    @my_school.school_id = params[:school_id]
    school = School.find_by id:params[:school_id]
    num = school.follow
    if num
      num += 1
    else
      num = 1
    end
    school.update(follow: num)
    
    if @my_school.save
      flash[:notice] = "Add to list successfully."
      redirect_to (:back)
    else
      flash[:notice] = "Already in your list."
      redirect_to (:back)
    end
  end

  
  def destroy
    school = School.find_by id:MySchool.find(params[:id]).school_id
    num = school.follow
    num -= 1
    school.update follow: num
    
    MySchool.find(params[:id]).destroy
    redirect_to mylist_path 
  end
  
  def index
  end

  def show
  end

  def new
  end
  
  def edit
  end
  
  def update
  end
  
  
  def my_school_params
    params.require(:my_school).permit(:name, :comment, :school_id, :user_id, :follow)
  end
  

end
