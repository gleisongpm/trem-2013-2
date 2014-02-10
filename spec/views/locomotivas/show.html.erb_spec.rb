require 'spec_helper'

describe "locomotivas/show" do
  before(:each) do
    @locomotiva = assign(:locomotiva, stub_model(Locomotiva,
      :nome => "Nome",
      :modelo => "Modelo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Modelo/)
  end
end
