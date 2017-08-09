require "rails_helper"

RSpec.describe ChurchesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "api/churches").to route_to("churches#index")
    end


    it "routes to #show" do
      expect(:get => "api/churches/1").to route_to("churches#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "api/churches").to route_to("churches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "api/churches/1").to route_to("churches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "api/churches/1").to route_to("churches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "api/churches/1").to route_to("churches#destroy", :id => "1")
    end

  end
end
