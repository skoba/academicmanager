require 'rails_helper'

RSpec.describe ScaleController, type: :controller do

  describe "GET #daily" do
    it "returns http success" do
      get :daily
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #monthly" do
    it "returns http success" do
      get :monthly
      expect(response).to have_http_status(:success)
    end
  end

end
