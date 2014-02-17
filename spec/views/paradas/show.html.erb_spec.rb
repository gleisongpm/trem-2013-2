require 'spec_helper'

describe "paradas/show" do
  before(:each) do
    @parada = assign(:parada, stub_model(Parada,
      :linha => nil,
      :estacao => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
