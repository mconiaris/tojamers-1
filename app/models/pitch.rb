class Pitch < ActiveRecord::Base
  belongs_to :story
  has_one :user, through: :story
  validates :body, presence: true
end
