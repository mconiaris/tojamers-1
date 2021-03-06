require 'rails_helper'

RSpec.describe Pitch, :type => :model do
  it { should belong_to(:stories) }
  it { should validate_presence_of(:pitch) }
end
