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

describe LocomotivalinhaparadasController do

  # This should return the minimal set of attributes required to create a valid
  # Locomotivalinhaparada. As you add validations to Locomotivalinhaparada, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "horachegada" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LocomotivalinhaparadasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all locomotivalinhaparadas as @locomotivalinhaparadas" do
      locomotivalinhaparada = Locomotivalinhaparada.create! valid_attributes
      get :index, {}, valid_session
      assigns(:locomotivalinhaparadas).should eq([locomotivalinhaparada])
    end
  end

  describe "GET show" do
    it "assigns the requested locomotivalinhaparada as @locomotivalinhaparada" do
      locomotivalinhaparada = Locomotivalinhaparada.create! valid_attributes
      get :show, {:id => locomotivalinhaparada.to_param}, valid_session
      assigns(:locomotivalinhaparada).should eq(locomotivalinhaparada)
    end
  end

  describe "GET new" do
    it "assigns a new locomotivalinhaparada as @locomotivalinhaparada" do
      get :new, {}, valid_session
      assigns(:locomotivalinhaparada).should be_a_new(Locomotivalinhaparada)
    end
  end

  describe "GET edit" do
    it "assigns the requested locomotivalinhaparada as @locomotivalinhaparada" do
      locomotivalinhaparada = Locomotivalinhaparada.create! valid_attributes
      get :edit, {:id => locomotivalinhaparada.to_param}, valid_session
      assigns(:locomotivalinhaparada).should eq(locomotivalinhaparada)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Locomotivalinhaparada" do
        expect {
          post :create, {:locomotivalinhaparada => valid_attributes}, valid_session
        }.to change(Locomotivalinhaparada, :count).by(1)
      end

      it "assigns a newly created locomotivalinhaparada as @locomotivalinhaparada" do
        post :create, {:locomotivalinhaparada => valid_attributes}, valid_session
        assigns(:locomotivalinhaparada).should be_a(Locomotivalinhaparada)
        assigns(:locomotivalinhaparada).should be_persisted
      end

      it "redirects to the created locomotivalinhaparada" do
        post :create, {:locomotivalinhaparada => valid_attributes}, valid_session
        response.should redirect_to(Locomotivalinhaparada.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved locomotivalinhaparada as @locomotivalinhaparada" do
        # Trigger the behavior that occurs when invalid params are submitted
        Locomotivalinhaparada.any_instance.stub(:save).and_return(false)
        post :create, {:locomotivalinhaparada => { "horachegada" => "invalid value" }}, valid_session
        assigns(:locomotivalinhaparada).should be_a_new(Locomotivalinhaparada)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Locomotivalinhaparada.any_instance.stub(:save).and_return(false)
        post :create, {:locomotivalinhaparada => { "horachegada" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested locomotivalinhaparada" do
        locomotivalinhaparada = Locomotivalinhaparada.create! valid_attributes
        # Assuming there are no other locomotivalinhaparadas in the database, this
        # specifies that the Locomotivalinhaparada created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Locomotivalinhaparada.any_instance.should_receive(:update).with({ "horachegada" => "MyString" })
        put :update, {:id => locomotivalinhaparada.to_param, :locomotivalinhaparada => { "horachegada" => "MyString" }}, valid_session
      end

      it "assigns the requested locomotivalinhaparada as @locomotivalinhaparada" do
        locomotivalinhaparada = Locomotivalinhaparada.create! valid_attributes
        put :update, {:id => locomotivalinhaparada.to_param, :locomotivalinhaparada => valid_attributes}, valid_session
        assigns(:locomotivalinhaparada).should eq(locomotivalinhaparada)
      end

      it "redirects to the locomotivalinhaparada" do
        locomotivalinhaparada = Locomotivalinhaparada.create! valid_attributes
        put :update, {:id => locomotivalinhaparada.to_param, :locomotivalinhaparada => valid_attributes}, valid_session
        response.should redirect_to(locomotivalinhaparada)
      end
    end

    describe "with invalid params" do
      it "assigns the locomotivalinhaparada as @locomotivalinhaparada" do
        locomotivalinhaparada = Locomotivalinhaparada.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Locomotivalinhaparada.any_instance.stub(:save).and_return(false)
        put :update, {:id => locomotivalinhaparada.to_param, :locomotivalinhaparada => { "horachegada" => "invalid value" }}, valid_session
        assigns(:locomotivalinhaparada).should eq(locomotivalinhaparada)
      end

      it "re-renders the 'edit' template" do
        locomotivalinhaparada = Locomotivalinhaparada.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Locomotivalinhaparada.any_instance.stub(:save).and_return(false)
        put :update, {:id => locomotivalinhaparada.to_param, :locomotivalinhaparada => { "horachegada" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested locomotivalinhaparada" do
      locomotivalinhaparada = Locomotivalinhaparada.create! valid_attributes
      expect {
        delete :destroy, {:id => locomotivalinhaparada.to_param}, valid_session
      }.to change(Locomotivalinhaparada, :count).by(-1)
    end

    it "redirects to the locomotivalinhaparadas list" do
      locomotivalinhaparada = Locomotivalinhaparada.create! valid_attributes
      delete :destroy, {:id => locomotivalinhaparada.to_param}, valid_session
      response.should redirect_to(locomotivalinhaparadas_url)
    end
  end

end