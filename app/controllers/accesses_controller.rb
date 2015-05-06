class AccessesController < ApplicationController
#  before_action :set_access, only[:edit, :destroy]

  def index
   @image = Image.find params[:image_id]
   @accesses = @image.accesses
  end

#  def new 
#   @image = Image.find params[:image_id] 
#   @access = @image.accesses.new
#  end

  def create
    @image = Image.find params[:image_id]
    @access = @image.accesses.new(access_params)

   if @access.save
     redirect_to @image , notice: 'Access was successfully created.'
   else
     redirect_to @image
   end
  end

  def destroy
     @access = Access.find params[:id]
     @image = @access.image
     @access.destroy

     redirect_to @image , notice: 'Access was successfully destory.'
  end
private
  def access_params
    params.require(:access).permit(:user_id)
  end
end
