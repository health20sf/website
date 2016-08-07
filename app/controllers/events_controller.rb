class EventsController < ApplicationController
  before_filter :must_be_admin

  def index
    @events = Event.all
    render :index
  end

  def new
    @event = Event.new
    render :new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_url
    else
      render @event.errors.full_messages
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      flash[:success] = "Profile updated"
      redirect_to @event
    else
      render 'edit'
    end
  end

  def show
    @event = Event.find(params[:id])
    render :show
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_url
  end

  private

  def must_be_admin
    unless current_user && current_user.admin
      redirect_to root_path, notice: "Unauthorized access."
    end
  end

  def event_params
    params.require(:event).permit(:speaker_name, :speaker_image, :speaker_image_url, :speaker_date, :demo_company_one_image, :demo_company_one_url, :demo_company_two_image, :demo_company_two_url, :description, :eventbrite_link)
  end
end
