require 'spec_helper'

describe "linhas/show" do
  before(:each) do
    @linha = assign(:linha, stub_model(Linha,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
