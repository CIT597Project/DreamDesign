class StaticPagesController < ApplicationController
  def home
    @videos = Video.all
  	render layout: "home"
  end
end
