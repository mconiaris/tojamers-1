class StoriesController < ApplicationController
  before_action :load_user, only: [:index, :create, :destroy, :update,]
  before_action :load_story, only: [:show, :edit]

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

  def edit
    if @story.user.email == session[:user_email]
      render :edit
    else
      redirect_to root_path
    end
  end

  def update
    story = Story.find(params[:id])
    story.update(story_params)
    redirect_to story_path(story)
  end

  def destroy
    story = Story.find(params[:id])
    user = story.user_id
    story.destroy
    redirect_to user_path(user)
  end

  def create
    user = User.find(params[:userid])
    story = Story.create(story_params)
    story.user = user
    story.save
    redirect_to user_path(user)
  end

  def load_story
    @story = Story.find(params[:id])
  end

  def authorized?
    current_user_email = @story.user.email
    sessions_email = session[:user_email]
    current_user_email == sessions_email
  end

  helper_method :authorized?

  private

  def story_params
    params.require(:story).permit(:url, :description)
  end


  def load_user
    @user = User.find(session[:user_id])
  end

  def load_story
    @story = Story.find(params[:id])
  end



end

