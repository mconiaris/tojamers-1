require 'rails_helper'

RSpec.describe "Stories", :type => :request do
  describe "GET /stories" do
    it "route works! Get expected RecordNotFound error" do
      get stories_path
      # binding.pry
      expect(response.status).to be(200)
    end
  end
end
