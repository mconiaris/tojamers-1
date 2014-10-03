class StoriesController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    # @user = User.find(params[:user_id])
  end

  def new
    @story = Story.new
    @user_id = session[:user_id]
  end

  def show
  end

  def create
    user = User.find(params[:userid])
    story = Story.create(story_params)
    story.user = user
    story.save
    # binding.pry
    redirect_to user_path(user)
  end

  private

  def story_params
    params.require(:story).permit(:url, :description)
  end




end

