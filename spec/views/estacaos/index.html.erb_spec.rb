require 'spec_helper'

describe "estacaos/index" do
  before(:each) do
    assign(:estacaos, [
      stub_model(Estacao,
        :nome => "Nome"
      ),
      stub_model(Estacao,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of estacaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
