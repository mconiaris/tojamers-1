# rake spec:features

require 'spec_helper'
# TODO factor out signin process into a helper
# TODO create a spec helper to do that
describe "the successful login and logout process", :type => :feature do
  before :each do
    User.create(first_name: "Ryan", last_name: "Parks", email: "rnparks@gmail.com", phone: "(917) 750-2397", user_type: "company", password: "12345")
  end
  it "signs me in" do
    visit '/login'
    within("div.login") do
      fill_in 'Email', :with => 'rnparks@gmail.com'
      fill_in 'Password', :with => '12345'
    end
    # TODO: Replace 'Login' with a variable or a
    # placeholder in case 'Login' changes.
    click_button 'Login'
    expect(page).to have_content 'Hey, Ryan!'
    expect(page).to have_content 'Click here to logout'
    expect(page).to have_content 'Edit your profile'
  end
end

describe "the logout process", :type => :feature do
    user = User.create(first_name: "Ryan", last_name: "Parks", email: "rnparks@gmail.com", phone: "(917) 750-2397", user_type: "company", password: "12345")
  it "signs you out" do
    visit users_path
    binding.pry
    expect(page).to have_content 'Click here to logout'
    # TODO: Replace 'Login' with a variable or a
    # placeholder in case 'Login' changes.
    click_link('Click here to logout')
    expect(page).to have_content 'Showing All the Pitches'
  end
end

xdescribe "the unsuccessful signin process", :type => :feature do
  before :each do
    User.create(first_name: "Ryan", last_name: "Parks", email: "rnparks@gmail.com", phone: "(917) 750-2397", user_type: "company", password: "12345")
  end
  it "tells me that the username or password is incorrect" do
    visit '/login'
    within("div.login") do
      fill_in 'Email', :with => 'rnparks@gmail.com'
      fill_in 'Password', :with => '12345'
    end
    # TODO: Replace 'Login' with a variable or a
    # placeholder in case 'Login' changes.
    click_button 'Login'
    expect(page).to have_content 'Hey, Ryan!'
  end
end
