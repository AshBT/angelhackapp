class ReadingController < ApplicationController
  def index
    @reading = Reading.limit(1000)
    respond_to do |format|
      format.json {render json: {"events" => @reading}}
      format.html
    end
  end

  def show
    @reading = Reading.limit(1)
    respond_to do |format|
      format.json {render json: {"events" => @reading}}
      format.html
    end
  end

  def new
  end

  def editcreate
  end

  def update
  end

  def delete
  end
end
