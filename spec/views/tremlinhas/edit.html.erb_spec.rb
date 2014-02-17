require 'spec_helper'

describe "tremlinhas/edit" do
  before(:each) do
    @tremlinha = assign(:tremlinha, stub_model(Tremlinha,
      :destino => "MyString",
      :locomotiva => nil,
      :linha => nil
    ))
  end

  it "renders the edit tremlinha form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tremlinha_path(@tremlinha), "post" do
      assert_select "input#tremlinha_destino[name=?]", "tremlinha[destino]"
      assert_select "input#tremlinha_locomotiva[name=?]", "tremlinha[locomotiva]"
      assert_select "input#tremlinha_linha[name=?]", "tremlinha[linha]"
    end
  end
end
