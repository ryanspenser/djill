class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  respond_to :html
  def past
    @events = Event.all
    respond_with(@events)
  end  

  def index
    @events = Event.all
    respond_with(@events)
  end

  def show
    @event = Event.find(params[:id])
    @comment = @event.comments.new
    @video = @event.videos.new
    @image = @event.images.new
  end

  def new
    @event = Event.new
    respond_with(@event)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.save
    respond_with(@event)
  end

  def update
    @event.update(event_params)
    respond_with(@event)
  end

  def destroy
    @event.destroy
    respond_with(@event)
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :date, :location, :description, :upcoming)
    end
end
