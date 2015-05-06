class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]

  respond_to :html

  def index
    @event = Event.find params[:event_id]
    @comment = @event.comments
  end

  def new
    @event = Event.find params[:event_id]
    @comment = @event.comments.new
  end

  def edit
    @comment = Comment.find params[:id]
  end

  def create
    @event = Event.find params[:event_id]
    @comment = @event.comments.new(comment_params)
     

   if @comment.save
	redirect_to @event, notice: 'Comment Created'
   else
	redirect_to @event
  end
  end

  def update
  @comment = Comment.find params[:id]
  if @comment.update(comment_params)
	redirect_to @comment.event, notice: 'Comment Updated'
  else
        render :edit
  end
  end

  def destroy
  @comment.destroy
  @event = @comment.event

  redirect_to @event , notice: 'Comment Removed'
  end
  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:comment)
    end
end
