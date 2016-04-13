class StaticPagesController < ApplicationController

  def root
    @events = Event.all
    render :root
  end

  def register
    render :register
  end
end
