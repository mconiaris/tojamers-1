module TestHelpers

  def login
    visit '/login'
    within("div.login") do
      fill_in 'Email', :with => 'rnparks@gmail.com'
      fill_in 'Password', :with => '12345'
    end
  end
end

