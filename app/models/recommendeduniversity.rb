class Recommendeduniversity < ActiveRecord::Base
  self.table_name = "public.RECOMMENDEDUNIVERSITIES"
  def recommendeduniversity_params
      params.require(:recommendeduniversity).permit(:institution_name, :institution_address, :institution_city, :institution_state, :institution_zip,
      :institution_web_address, :name_abb, :name_abb1)
 end
end
