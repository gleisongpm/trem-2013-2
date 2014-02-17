require 'spec_helper'

describe "tremlinhas/new" do
  before(:each) do
    assign(:tremlinha, stub_model(Tremlinha,
      :destino => "MyString",
      :locomotiva => nil,
      :linha => nil
    ).as_new_record)
  end

  it "renders new tremlinha form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tremlinhas_path, "post" do
      assert_select "input#tremlinha_destino[name=?]", "tremlinha[destino]"
      assert_select "input#tremlinha_locomotiva[name=?]", "tremlinha[locomotiva]"
      assert_select "input#tremlinha_linha[name=?]", "tremlinha[linha]"
    end
  end
end
