require "spec_helper"

describe ParadasController do
  describe "routing" do

    it "routes to #index" do
      get("/paradas").should route_to("paradas#index")
    end

    it "routes to #new" do
      get("/paradas/new").should route_to("paradas#new")
    end

    it "routes to #show" do
      get("/paradas/1").should route_to("paradas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/paradas/1/edit").should route_to("paradas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/paradas").should route_to("paradas#create")
    end

    it "routes to #update" do
      put("/paradas/1").should route_to("paradas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/paradas/1").should route_to("paradas#destroy", :id => "1")
    end

  end
end
