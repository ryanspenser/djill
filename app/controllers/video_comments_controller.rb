class VideoCommentsController < ApplicationController
  before_action :set_video_comment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @video_comments = VideoComment.all
    respond_with(@video_comments)
  end

  def show
    respond_with(@video_comment)
  end

  def new
    @video_comment = VideoComment.new
    respond_with(@video_comment)
  end

  def edit
  end

  def create
    @video_comment = VideoComment.new(video_comment_params)
    @video_comment.save
    respond_with(@video_comment)
  end

  def update
    @video_comment.update(video_comment_params)
    respond_with(@video_comment)
  end

  def destroy
    @video_comment.destroy
    respond_with(@video_comment)
  end

  private
    def set_video_comment
      @video_comment = VideoComment.find(params[:id])
    end

    def video_comment_params
      params.require(:video_comment).permit(:comment)
    end
end
