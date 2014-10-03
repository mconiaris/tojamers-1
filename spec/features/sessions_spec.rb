describe "the signin process", :type => :feature do
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
    expect(page).to have_content 'rnparks@gmail.com'
  end
end
