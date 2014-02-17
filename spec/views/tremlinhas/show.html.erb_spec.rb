require 'spec_helper'

describe "tremlinhas/show" do
  before(:each) do
    @tremlinha = assign(:tremlinha, stub_model(Tremlinha,
      :destino => "Destino",
      :locomotiva => nil,
      :linha => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Destino/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
