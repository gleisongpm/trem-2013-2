require 'spec_helper'

describe "tremlinhas/index" do
  before(:each) do
    assign(:tremlinhas, [
      stub_model(Tremlinha,
        :destino => "Destino",
        :locomotiva => nil,
        :linha => nil
      ),
      stub_model(Tremlinha,
        :destino => "Destino",
        :locomotiva => nil,
        :linha => nil
      )
    ])
  end

  it "renders a list of tremlinhas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Destino".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
