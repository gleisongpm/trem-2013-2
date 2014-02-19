require 'spec_helper'

describe "locomotivalinhaparadas/show" do
  before(:each) do
    @locomotivalinhaparada = assign(:locomotivalinhaparada, stub_model(Locomotivalinhaparada,
      :horachegada => "Horachegada",
      :horapartida => "Horapartida",
      :tremlinha => nil,
      :parada => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Horachegada/)
    rendered.should match(/Horapartida/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
