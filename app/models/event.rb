class Event < ActiveRecord::Base

  has_many(
    :attendees,
    class_name: "User",
    foreign_key: :event_id,
    primary_key: :id
  )

end
