class ContactController < ApplicationController
  def index
    @contact = Contact.all
    respond_to do |format|
      format.json {render json: {"contacts" => @contact}}
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
