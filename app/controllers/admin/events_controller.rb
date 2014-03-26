class Admin::EventsController < Admin::AdminController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = 'Event deleted'
    redirect_to action: 'index'
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:notice] = 'Event created'
      redirect_to action: 'index'
    else
      flash[:alert] = 'Error'
      render :new
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:notice] = 'Event updated'
      redirect_to action: 'index'
    else
      flash[:alert] = 'Error'
      render :edit
    end
  end

end