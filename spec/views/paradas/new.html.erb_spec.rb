require 'spec_helper'

describe "paradas/new" do
  before(:each) do
    assign(:parada, stub_model(Parada,
      :ordem => "MyString",
      :linha => nil,
      :estacao => nil
    ).as_new_record)
  end

  it "renders new parada form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", paradas_path, "post" do
      assert_select "input#parada_ordem[name=?]", "parada[ordem]"
      assert_select "input#parada_linha[name=?]", "parada[linha]"
      assert_select "input#parada_estacao[name=?]", "parada[estacao]"
    end
  end
end
