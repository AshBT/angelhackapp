class Event < ActiveRecord::Base
  attr_accessible :action_taken, :description, :end, :status, :trigger, :event_type

  def return_event_info
    @Event = Event.last()
  end
  
end
