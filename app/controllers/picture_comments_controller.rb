class PictureCommentsController < ApplicationController
  before_action :set_picture_comment, only: [:edit, :update, :destroy]

  respond_to :html

  def index
    @image = Image.find params[:image_id]
    @picture_comment = @image.picture_comments
  end

  def new
    @image = Image.find params[:image_id]
    @picture_comment = @image.picture_comments.new
  end

  def edit
    @picture_comment = Picture_comment.find params[:id]
  end

  def create
    @image = Image.find params[:image_id]
    @picture_comment = @image.picture_comments.new(picture_comment_params)

    if @picture_comment.save
      redirect_to @image , notic: 'Comment was successfully created.'
    else
      redirect_to @image
    end
  end

  def update
    @picture_comment = Picture_comment.find params[:id]
    if @picture_comment.update(tag_params)
      redirect_to @picture_comment.image, notice: 'Comment was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @picture_comment = Picture_comment.find params[:id]
    @picture_comment.destroy
    @image = @picture_comment.image

    redirect_to @image , notice: 'Comment was successfully destory.'
  end

  private
    def set_picture_comment
      @picture_comment = PictureComment.find(params[:id])
    end

    def picture_comment_params
      params.require(:picture_comment).permit(:comment)
    end
end
