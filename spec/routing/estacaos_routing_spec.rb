require "spec_helper"

describe EstacaosController do
  describe "routing" do

    it "routes to #index" do
      get("/estacaos").should route_to("estacaos#index")
    end

    it "routes to #new" do
      get("/estacaos/new").should route_to("estacaos#new")
    end

    it "routes to #show" do
      get("/estacaos/1").should route_to("estacaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/estacaos/1/edit").should route_to("estacaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/estacaos").should route_to("estacaos#create")
    end

    it "routes to #update" do
      put("/estacaos/1").should route_to("estacaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/estacaos/1").should route_to("estacaos#destroy", :id => "1")
    end

  end
end
