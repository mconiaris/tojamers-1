class PitchesController < ApplicationController



  def index
    @pitches = Pitch.all
  end

  def new
    @pitch = Pitch.new
  end

  def create
    binding.pry
    # pitch = Pitch.create(user_params)
    # pitch.save
    # session[:user_id] = pitch.id
    # redirect_to user_path(a)
  end





end

