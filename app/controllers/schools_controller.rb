class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  def index
    @schools = School.all
    # respond_with(@schools)
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
  end

  def edit
  end

  def create
    @school = School.new(school_params)
    # @school.save
    render :show
  end

  def update
    @school.update(school_params)
    # respond_with(@school)
  end

  def destroy
    @school.destroy
    @schools=School.all
    render :index
  end
  

  private
    def set_school
      @school = School.find(params[:id])
    end

    def school_params    
    end
end
