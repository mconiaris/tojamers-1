class Pitch < ActiveRecord::Base
  belongs_to :story
  has_one :user, through: :story
end
