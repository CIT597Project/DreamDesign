class School< ActiveRecord::Base
  has_many :my_schools
  
  # attr_accessible :_ID, :Institution_Name, :Institution_Address, :Institution_City, :Institution_State, :Institution_Zip,
  # :Institution_Phone, :Institution_OPEID, :Institution_IPEDS_UnitID, :Institution_Web_Address, :Campus_ID, :Campus_Name,
  # :Campus_Address, :Campus_City, :Campus_State, :Campus_Zip, :Campus_IPEDS_UnitID, :Accredited_Type, :Agency_Name,
  # :Agency_Status, :Program_Name, :Accredited_Status, :Program_Name, :Accredited_Status, :Accreditation_Date_Type, :Periods
  def school_params
      params.require(:school).permit(:Instituion_ID, :Institution_Name, :Institution_Address, :Institution_City, :Institution_State, :Institution_Zip,
  :Institution_Phone, :Institution_OPEID, :Institution_IPEDS_UnitID, :Institution_Web_Address, :Campus_ID, :Campus_Name,
  :Campus_Address, :Campus_City, :Campus_State, :Campus_Zip, :Campus_IPEDS_UnitID, :Accreditation_Type, :Agency_Name,
  :Agency_Status, :Program_Name, :Accreditation_Status,  :Accreditation_Date_Type, :Periods, :Last_Action)
  end
end



