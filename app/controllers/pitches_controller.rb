class PitchesController < ApplicationController



  def index
    @pitches = Pitch.all
  end

  def new
    @pitch = Pitch.new
  end

  def create
    pitch = Pitch.create(pitch_params)
    story = Story.find(params[:story_id])
    pitch.story_id = params[:story_id]
    pitch.save
    redirect_to story_path(story)
  end

  private
  def pitch_params
    params.require(:pitch).permit(:body)
  end






end

