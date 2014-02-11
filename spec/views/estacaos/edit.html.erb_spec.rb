require 'spec_helper'

describe "estacaos/edit" do
  before(:each) do
    @estacao = assign(:estacao, stub_model(Estacao,
      :nome => "MyString"
    ))
  end

  it "renders the edit estacao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", estacao_path(@estacao), "post" do
      assert_select "input#estacao_nome[name=?]", "estacao[nome]"
    end
  end
end
