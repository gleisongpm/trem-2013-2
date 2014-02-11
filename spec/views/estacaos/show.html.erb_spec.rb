require 'spec_helper'

describe "estacaos/show" do
  before(:each) do
    @estacao = assign(:estacao, stub_model(Estacao,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
