require "spec_helper"

describe LocomotivasController do
  describe "routing" do

    it "routes to #index" do
      get("/locomotivas").should route_to("locomotivas#index")
    end

    it "routes to #new" do
      get("/locomotivas/new").should route_to("locomotivas#new")
    end

    it "routes to #show" do
      get("/locomotivas/1").should route_to("locomotivas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/locomotivas/1/edit").should route_to("locomotivas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/locomotivas").should route_to("locomotivas#create")
    end

    it "routes to #update" do
      put("/locomotivas/1").should route_to("locomotivas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/locomotivas/1").should route_to("locomotivas#destroy", :id => "1")
    end

  end
end
