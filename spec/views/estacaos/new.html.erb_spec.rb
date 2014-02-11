require 'spec_helper'

describe "estacaos/new" do
  before(:each) do
    assign(:estacao, stub_model(Estacao,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new estacao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", estacaos_path, "post" do
      assert_select "input#estacao_nome[name=?]", "estacao[nome]"
    end
  end
end
