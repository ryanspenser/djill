class VideosController < ApplicationController

  def index 
    @event = Event.find params[:event_id]
    @videos = @event.videos.order('created_at DESC')
  end

  def new
    @event = Event.find params[:event_id]
    @video = @event.videos.new
  end

  def create
    @event = Event.find params[:event_id]
    @video = @event.videos.new(video_params)
    if @video.save
      flash[:success] = 'Video added!'
      redirect_to @event 
    else 
	render 'new'
    end
  end

private
  def set_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:link)
  end
end
