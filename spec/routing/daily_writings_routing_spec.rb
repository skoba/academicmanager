require "rails_helper"

RSpec.describe DailyWritingsController, type: :routing do
  describe "routing" do

    xit "routes to #index" do
      expect(:get => "/daily_writings").to route_to("daily_writings#index")
    end

    xit "routes to #new" do
      expect(:get => "/daily_writings/new").to route_to("daily_writings#new")
    end

    xit "routes to #show" do
      expect(:get => "/daily_writings/1").to route_to("daily_writings#show", :id => "1")
    end

    xit "routes to #edit" do
      expect(:get => "/daily_writings/1/edit").to route_to("daily_writings#edit", :id => "1")
    end

    xit "routes to #create" do
      expect(:post => "/daily_writings").to route_to("daily_writings#create")
    end

    xit "routes to #update via PUT" do
      expect(:put => "/daily_writings/1").to route_to("daily_writings#update", :id => "1")
    end

    xit "routes to #update via PATCH" do
      expect(:patch => "/daily_writings/1").to route_to("daily_writings#update", :id => "1")
    end

    xit "routes to #destroy" do
      expect(:delete => "/daily_writings/1").to route_to("daily_writings#destroy", :id => "1")
    end

  end
end
