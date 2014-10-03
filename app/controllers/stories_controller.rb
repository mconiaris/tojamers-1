class StoriesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
  end

  def new
    @story = Story.new
  end

  def show
  end

end
