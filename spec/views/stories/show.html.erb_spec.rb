require 'rails_helper'

RSpec.describe "stories/show", :type => :view do
  before(:each) do
    @story = assign(:story, Story.create!(
      :url => "Url",
      :description => "STORY"
    ))
  end

  xit "renders attributes in <div>" do
    # binding.pry
    render
    # expect(rendered).to match(/Url/)
    expect(rendered).to match(/Description/)
  end
end
