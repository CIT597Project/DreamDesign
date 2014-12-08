class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  def index
    @schools = School.all
    # respond_with(@schools)
  end

  def show
    @school = School.find(params[:id])
  end


  def update
    @school.update(school_params)
    # respond_with(@school)
  end

 
  private
    def set_school
      @school = School.find(params[:id])
    end

    def school_params    
    end
end
