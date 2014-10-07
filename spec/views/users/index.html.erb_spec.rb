require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :first_name =>  "First Name",
        :last_name =>   "Last Name",
        :email =>       "Email",
        :phone =>       "Phone",
        :password =>    "Password"
      ),
      User.create!(
        :first_name =>  "First Name",
        :last_name =>   "Last Name",
        :email =>       "Email2",
        :phone =>       "Phone",
        :password =>    "Password"
      )
    ])
  end

  xit "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
