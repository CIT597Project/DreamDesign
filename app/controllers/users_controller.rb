class UsersController < ApplicationController
  
  
  def mylist
    @my_school = current_user.my_schools.build 
  end
end
