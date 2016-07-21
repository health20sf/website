require 'test_helper'

class EventTest < ActiveSupport::TestCase

  def setup
    @event = Event.new(speaker_name: "John Snow", speaker_date: "August 1st, 2016",
                       eventbrite_link: "www.health2sf.com", description: "Winter is coming.")
  end

  test "should be valid" do
    assert @event.valid?
  end

  test "speaker_name doesn't need to be present" do
    @event.speaker_name = nil
    assert @event.valid?
  end

end
