require 'rails_helper'

# create_table :stories do |t|
#   # TODO: Make user a user object.
#   t.string :user
#   t.string :url
#   t.string :description

RSpec.describe Story, :type => :model do
  it { should belong_to(:user) }
  # TODO is this redundant if it belongs to the user
  it { should validate_presence_of(:user) }
  # it { should validate_presence_of(:url) }
  it { should validate_presence_of(:description) }
end
