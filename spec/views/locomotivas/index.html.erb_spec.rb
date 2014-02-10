require 'spec_helper'

describe "locomotivas/index" do
  before(:each) do
    assign(:locomotivas, [
      stub_model(Locomotiva,
        :nome => "Nome",
        :modelo => "Modelo"
      ),
      stub_model(Locomotiva,
        :nome => "Nome",
        :modelo => "Modelo"
      )
    ])
  end

  it "renders a list of locomotivas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Modelo".to_s, :count => 2
  end
end
