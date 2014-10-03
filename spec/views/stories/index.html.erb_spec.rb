require 'rails_helper'

RSpec.describe "stories/index", :type => :view do
  before(:each) do
    assign(:stories, [
      Story.create!(
        :user => "User",
        :url => "Url",
        :description => "Description"
      ),
      Story.create!(
        :user => "User",
        :url => "Url",
        :description => "Description"
      )
    ])
  end

  it "renders a list of stories" do
    render
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
