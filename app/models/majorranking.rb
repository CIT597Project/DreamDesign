class Majorranking < ActiveRecord::Base
  self.table_name = "DREAMDESIGN.MAJORRANKINGS"
  def majorranking_params
      params.require(:majorranking).permit(:institution_name, :institution_address, :institution_city, :institution_state, :institution_zip,
      :institution_web_address)
 end
  
  
end
