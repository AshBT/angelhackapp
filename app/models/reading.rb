class Reading < ActiveRecord::Base
  attr_accessible :BPM, :IBI, :time

  @current_time = DateTime.now
  @counter = 0

  def calculate_BPM_every_4s

    @events = Reading.limit(40)
    @events.each do |event|
      if event.BPM != 0
        @counter = 0
      else
        @counter += 1
      end
    
    if @counter == 40
      Event.create(:event_type => "Arrythmia alert", :trigger => DateTime.now, :end => DateTime.now + 1)
    else 
      return nil
    end

  end

end