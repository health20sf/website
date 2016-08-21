class StaticPagesController < ApplicationController

  def root
    @events = Event.all
    render :root
  end

  def privacy
    render :privacy
  end

end
