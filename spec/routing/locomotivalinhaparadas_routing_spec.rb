require "spec_helper"

describe LocomotivalinhaparadasController do
  describe "routing" do

    it "routes to #index" do
      get("/locomotivalinhaparadas").should route_to("locomotivalinhaparadas#index")
    end

    it "routes to #new" do
      get("/locomotivalinhaparadas/new").should route_to("locomotivalinhaparadas#new")
    end

    it "routes to #show" do
      get("/locomotivalinhaparadas/1").should route_to("locomotivalinhaparadas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/locomotivalinhaparadas/1/edit").should route_to("locomotivalinhaparadas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/locomotivalinhaparadas").should route_to("locomotivalinhaparadas#create")
    end

    it "routes to #update" do
      put("/locomotivalinhaparadas/1").should route_to("locomotivalinhaparadas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/locomotivalinhaparadas/1").should route_to("locomotivalinhaparadas#destroy", :id => "1")
    end

  end
end
