require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe LocomotivasController do

  # This should return the minimal set of attributes required to create a valid
  # Locomotiva. As you add validations to Locomotiva, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nome" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LocomotivasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all locomotivas as @locomotivas" do
      locomotiva = Locomotiva.create! valid_attributes
      get :index, {}, valid_session
      assigns(:locomotivas).should eq([locomotiva])
    end
  end

  describe "GET show" do
    it "assigns the requested locomotiva as @locomotiva" do
      locomotiva = Locomotiva.create! valid_attributes
      get :show, {:id => locomotiva.to_param}, valid_session
      assigns(:locomotiva).should eq(locomotiva)
    end
  end

  describe "GET new" do
    it "assigns a new locomotiva as @locomotiva" do
      get :new, {}, valid_session
      assigns(:locomotiva).should be_a_new(Locomotiva)
    end
  end

  describe "GET edit" do
    it "assigns the requested locomotiva as @locomotiva" do
      locomotiva = Locomotiva.create! valid_attributes
      get :edit, {:id => locomotiva.to_param}, valid_session
      assigns(:locomotiva).should eq(locomotiva)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Locomotiva" do
        expect {
          post :create, {:locomotiva => valid_attributes}, valid_session
        }.to change(Locomotiva, :count).by(1)
      end

      it "assigns a newly created locomotiva as @locomotiva" do
        post :create, {:locomotiva => valid_attributes}, valid_session
        assigns(:locomotiva).should be_a(Locomotiva)
        assigns(:locomotiva).should be_persisted
      end

      it "redirects to the created locomotiva" do
        post :create, {:locomotiva => valid_attributes}, valid_session
        response.should redirect_to(Locomotiva.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved locomotiva as @locomotiva" do
        # Trigger the behavior that occurs when invalid params are submitted
        Locomotiva.any_instance.stub(:save).and_return(false)
        post :create, {:locomotiva => { "nome" => "invalid value" }}, valid_session
        assigns(:locomotiva).should be_a_new(Locomotiva)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Locomotiva.any_instance.stub(:save).and_return(false)
        post :create, {:locomotiva => { "nome" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested locomotiva" do
        locomotiva = Locomotiva.create! valid_attributes
        # Assuming there are no other locomotivas in the database, this
        # specifies that the Locomotiva created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Locomotiva.any_instance.should_receive(:update).with({ "nome" => "MyString" })
        put :update, {:id => locomotiva.to_param, :locomotiva => { "nome" => "MyString" }}, valid_session
      end

      it "assigns the requested locomotiva as @locomotiva" do
        locomotiva = Locomotiva.create! valid_attributes
        put :update, {:id => locomotiva.to_param, :locomotiva => valid_attributes}, valid_session
        assigns(:locomotiva).should eq(locomotiva)
      end

      it "redirects to the locomotiva" do
        locomotiva = Locomotiva.create! valid_attributes
        put :update, {:id => locomotiva.to_param, :locomotiva => valid_attributes}, valid_session
        response.should redirect_to(locomotiva)
      end
    end

    describe "with invalid params" do
      it "assigns the locomotiva as @locomotiva" do
        locomotiva = Locomotiva.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Locomotiva.any_instance.stub(:save).and_return(false)
        put :update, {:id => locomotiva.to_param, :locomotiva => { "nome" => "invalid value" }}, valid_session
        assigns(:locomotiva).should eq(locomotiva)
      end

      it "re-renders the 'edit' template" do
        locomotiva = Locomotiva.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Locomotiva.any_instance.stub(:save).and_return(false)
        put :update, {:id => locomotiva.to_param, :locomotiva => { "nome" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested locomotiva" do
      locomotiva = Locomotiva.create! valid_attributes
      expect {
        delete :destroy, {:id => locomotiva.to_param}, valid_session
      }.to change(Locomotiva, :count).by(-1)
    end

    it "redirects to the locomotivas list" do
      locomotiva = Locomotiva.create! valid_attributes
      delete :destroy, {:id => locomotiva.to_param}, valid_session
      response.should redirect_to(locomotivas_url)
    end
  end

end
