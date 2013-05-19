class UserController < ApplicationController

  def index
    @user = User.all
    respond_to do |format|
      format.json {render json: {"users" => @user}}
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
