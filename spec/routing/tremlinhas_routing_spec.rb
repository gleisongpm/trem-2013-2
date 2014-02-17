require "spec_helper"

describe TremlinhasController do
  describe "routing" do

    it "routes to #index" do
      get("/tremlinhas").should route_to("tremlinhas#index")
    end

    it "routes to #new" do
      get("/tremlinhas/new").should route_to("tremlinhas#new")
    end

    it "routes to #show" do
      get("/tremlinhas/1").should route_to("tremlinhas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tremlinhas/1/edit").should route_to("tremlinhas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tremlinhas").should route_to("tremlinhas#create")
    end

    it "routes to #update" do
      put("/tremlinhas/1").should route_to("tremlinhas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tremlinhas/1").should route_to("tremlinhas#destroy", :id => "1")
    end

  end
end
