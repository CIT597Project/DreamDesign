class UsersController < ApplicationController
  def mylist
    
    @user = current_user
    @my_schools = @user.my_schools
    @my_school = current_user.my_schools.build 
  end
end
