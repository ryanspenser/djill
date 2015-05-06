class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
  #  @public_images = Image.where(public: true).map {|image| image if image.user_id != current_user}.compact
 #  if current_user
 #   @my_images = Image.where(user_id: current_user)
 #   @my_private_images = current_user.accesses.map { |access| access.image}
 #   @public = @public_images.map { |image| image if image.user != current_user}.compact
 # else
 # @public = nil
 #  @my_images = nil
 #   @my_private_image = nil
 # end

  @images = Image.all
  end

  def show
    @event = Event.find params[:event_id]
    @image = @event.images
    @picture_comment = @image.picture_comments.new
   # @access = @image.accesses.new
   # @eligible_users = @image.users_access
  end

  def new
    @event = Event.find params[:event_id]
    @image = @event.images
  end

  def edit
    @image = Image.find(params[:id])
  end

  def create
    @event = Event.find params[:event_id]
    @image = @event.images.new(image_params)
    @image.generate_filename
    if params[:image][:uploaded_file] == nil
      redirect_to event_url, notice: 'No Image Added.'
    else
    @uploaded_io = params[:image][:uploaded_file]

    File.open(Rails.root.join('public', 'images', @image.filename), 'wb') do |file|
        file.write(@uploaded_io.read)
    end

    if @image.save
      redirect_to @event, notice: 'Image was successfully created.'
    else
      render :new
    end
  end
  end
  def update
    if @image.update(image_params)
       if params[:image][:uploaded_file] != nil
         @uploaded_io = params[:image][:uploaded_file]

    File.open(Rails.root.join('public', 'images', @image.filename), 'wb') do |file|
        file.write(@uploaded_io.read)
    end
    end
        redirect_to @event, notice: 'Image sucessfully updated.'
    else
      render :edit
    end
  end
  def destroy
    @image.destroy
    redirect_to event_url
  end

  private
    def set_image
      @image = Image.find(params[:id])
    end

    def image_params
      params.require(:image).permit(:private)
    end
end
