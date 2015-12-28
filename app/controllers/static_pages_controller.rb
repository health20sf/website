class StaticPagesController < ApplicationController

  def root
    render :root
  end

  def about
    render :about
  end

  def events
    render :events
  end

end
