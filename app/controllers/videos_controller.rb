class VideosController < ApplicationController
  def create
    
    @school = School.find(params[:school_id])
    @video = Video.create()
    @video.update(user_id:current_user.id)
    @video.update(school_id:@school.id)
    @video.update(videotoken:params[:videotoken])
    if @video.save
      flash[:notice] = "video has been saved."
    else
      flash[:notice] = "video failed to save."
    end
    redirect_to (:back)
  end
  

  
  private
  def video_params
    params.require(:video).permit(:videotoken, :school_id, :user_id)
  end
  
end


