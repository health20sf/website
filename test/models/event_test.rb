require 'test_helper'

class EventTest < ActiveSupport::TestCase

  def setup
    @event = Event.new(title: "Health 2.0", location: "San Fran",
                       url: "www.health2sf.com", time: "2016-01-01 20:00:00")
  end

  test "should be valid" do
    assert @event.valid?
  end

  test "title should be present" do
    @event.title = nil
    assert_not @event.valid?
  end

end
