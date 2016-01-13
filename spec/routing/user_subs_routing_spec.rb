require "rails_helper"

RSpec.describe UserSubsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_subs").to route_to("user_subs#index")
    end

    it "routes to #new" do
      expect(:get => "/user_subs/new").to route_to("user_subs#new")
    end

    it "routes to #show" do
      expect(:get => "/user_subs/1").to route_to("user_subs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_subs/1/edit").to route_to("user_subs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_subs").to route_to("user_subs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_subs/1").to route_to("user_subs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_subs/1").to route_to("user_subs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_subs/1").to route_to("user_subs#destroy", :id => "1")
    end

  end
end
