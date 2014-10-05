require 'rails_helper'

RSpec.describe Pitch, :type => :model do
  it { should belong_to(:story) }
  # TODO is this redundant
  it { should validate_presence_of(:story) }
end
