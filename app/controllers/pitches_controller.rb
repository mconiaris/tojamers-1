class PitchesController < ApplicationController



  def index
    @pitches = Pitch.all
  end

  def new
    @pitch = Pitch.new
    @user = User.find(session[:user_id])
    @user_type = @user.user_type
  end

  def show
    @pitch = Pitch.find(params[:id])
    @story = Story.find(params[:story_id])
  end

  def destroy
    pitch = Pitch.find(params[:id])
    story = Story.find(params[:story_id])
    pitch.delete
    redirect_to story_path(story)
  end

  def create
    pitch = Pitch.create(pitch_params)
    story = Story.find(params[:story_id])
    pitch.story_id = params[:story_id]
    pitch.save
    redirect_to story_path(story)
  end

  def edit
    @pitch = Pitch.find(params[:id])
  end

  def update
    story = Story.find(params[:story_id])
    pitch = Pitch.find(params[:id])
    pitch.update(pitch_params)
    redirect_to story_pitch_path(story, pitch)
  end

  private
  def pitch_params
    params.require(:pitch).permit(:body, :user_type)
  end






end

