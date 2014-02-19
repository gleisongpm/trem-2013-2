require 'spec_helper'

describe "locomotivalinhaparadas/index" do
  before(:each) do
    assign(:locomotivalinhaparadas, [
      stub_model(Locomotivalinhaparada,
        :horachegada => "Horachegada",
        :horapartida => "Horapartida",
        :tremlinha => nil,
        :parada => nil
      ),
      stub_model(Locomotivalinhaparada,
        :horachegada => "Horachegada",
        :horapartida => "Horapartida",
        :tremlinha => nil,
        :parada => nil
      )
    ])
  end

  it "renders a list of locomotivalinhaparadas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Horachegada".to_s, :count => 2
    assert_select "tr>td", :text => "Horapartida".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
