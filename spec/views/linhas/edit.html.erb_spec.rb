require 'spec_helper'

describe "linhas/edit" do
  before(:each) do
    @linha = assign(:linha, stub_model(Linha,
      :nome => "MyString"
    ))
  end

  it "renders the edit linha form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", linha_path(@linha), "post" do
      assert_select "input#linha_nome[name=?]", "linha[nome]"
    end
  end
end
