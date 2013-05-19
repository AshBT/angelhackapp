class Event < ActiveRecord::Base
  attr_accessible :action_taken, :description, :end, :status, :trigger, :event_type
end
