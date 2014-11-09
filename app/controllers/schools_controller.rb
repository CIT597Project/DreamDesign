class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  def index
    @schools = School.all
    # respond_with(@schools)
  end

  def show
    # respond_with(@school)
  end

  def new
    @school = School.new
    # respond_with(@school)
  end

  def edit
  end

  def create
    @school = School.new(school_params)
    @school.save
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
      params.require(:school).permit(:UNITID, :INSTNM, :ADDR, :CITY, :STABBR, :ZIP, :FIPS, :OBEREG, :CHFNM, :CHFTITLE, :GENTELE, :FAXTELE, :EIN, :OPEID, :OPEFLAG, :WEBADDR, :ADMINURL, :FAIDURL, :string, :APPLURL, :NPRICURL, :SECTOR, :ICLEVEL, :CONTROL, :HLOFFER, :UGOFFER, :GROFFER, :HDEGOFR1, :DEGGRANT, :HBCU, :HOSPITAL, :MEDICAL, :TRIBAL, :LOCALE, :OPENPUBL, :ACT, :NEWID, :DEATHYR, :CLOSEDAT, :CYACTIVE, :POSTSEC, :PSEFLAG, :PSET4FLG, :RPTMTH, :IALIAS, :INSTCAT, :CCBASIC, :CCIPUG, :CCIPGRAD, :CCUGPROF, :CCENRPRF, :CCSIZSET, :CARNEGIE, :LANDGRNT, :INSTSIZE, :CBSA, :CBSATYPE, :CSA, :NECTA, :F1SYSTYP, :F1SYSNAM, :F1SYSCOD, :COUNTYCD, :COUNTYNM, :CNGDSTCD, :LONGITUD, :LATITUDE)
    end
end
