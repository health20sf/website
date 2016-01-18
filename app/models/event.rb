class Event < ActiveRecord::Base
  validates :title, :location, :time, presence: true
end
