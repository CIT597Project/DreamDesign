class MySchoolsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @my_school = current_user.my_schools.build(my_school_params)
    @my_school.user_id = current_user.id
    new_school = @my_school
    if new_school.save
      redirect_to mylist_path
    else
      redirect_to mylist_path
    end
  end

  
  def destroy
    
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
  
  private
  def my_school_params
    params.require(:my_school).permit(:name)
  end
end
