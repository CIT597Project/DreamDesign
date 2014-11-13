
class GeneralController < ApplicationController
require 'csv' 
  

  def ranking
    CSV.foreach("Accreditation_2014_10 copy.csv", :headers => true) do |row|
      School.create!(row.to_hash)
    end
    @schools=School.all.select(:Institution_ID, :Institution_Name, :Institution_Address, :Institution_City, :Institution_State, :Institution_Zip,
  :Institution_Phone, :Institution_OPEID, :Institution_IPEDS_UnitID, :Institution_Web_Address, :Accreditation_Status, :follow).uniq
  end
  
      

  
end
