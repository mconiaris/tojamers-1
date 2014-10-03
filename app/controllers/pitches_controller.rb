class PitchesController < ApplicationController



  def index
  end

  def new
    @pitch = Pitch.new
  end

end

