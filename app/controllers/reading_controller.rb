class ReadingController < ApplicationController
  
  @current_time = DateTime.now

  def index
    @reading = Reading.limit(1000)
    respond_to do |format|
      format.json {render json: {"events" => @reading}}
      format.html
    end
  end

  def show
    @reading = Reading.limit(1)
    @current_BPM = Reading.last()
    @event_max = Reading.maximum("BPM")
    @BPM_average = Reading.average("BPM")
    @Arrythmia_alert = Event.last()

    respond_to do |format|
      format.json {render json: {"reading" => @reading, "current_bpm" => @current_BPM, "event_max" => @event_max, "BPM_average" => @BPM_average, "Arrythmia_alert" => @Arrythmia_alert}}
      format.html
    end
  end

  def arrythmia_alert
    @arrythmia_check_data = Reading.limit(40)

    @counter = 0
    
    @arrythmia_check_data.each do |event|
      if event.BPM != 0
        @counter = 0
      elsif @counter >= 40
        Event.create(:event_type => "Arrythmia alert", :trigger => DateTime.now, :end => DateTime.now + 1)
      else 
        @counter += 1
      end
    end
  end

end