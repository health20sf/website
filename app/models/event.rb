class Event < ActiveRecord::Base
  validates :title, :location, :time, presence: true

  has_many(
    :attendees,
    class_name: "User",
    foreign_key: :event_id,
    primary_key: :id
  )

end
