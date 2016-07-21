class StaticPagesController < ApplicationController

  def root
    @events = Event.all
    render :root
  end

end
