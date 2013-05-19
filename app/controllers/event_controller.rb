class EventController < ApplicationController
   def index
    @event = Event.all
    respond_to do |format|
      format.json {render json: {"events" => @event}}
      format.html
    end
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def delete
  end
end
