require 'spec_helper'

describe "paradas/index" do
  before(:each) do
    assign(:paradas, [
      stub_model(Parada,
        :linha => nil,
        :estacao => nil
      ),
      stub_model(Parada,
        :linha => nil,
        :estacao => nil
      )
    ])
  end

  it "renders a list of paradas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
