require 'rails_helper'

RSpec.describe "DailyWritings", type: :request do
  describe "GET /daily_writings" do
    it "works! (now write some real specs)" do
      get daily_writings_path
      expect(response).to have_http_status(200)
    end
  end
end
