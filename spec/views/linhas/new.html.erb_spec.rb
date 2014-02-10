require 'spec_helper'

describe "linhas/new" do
  before(:each) do
    assign(:linha, stub_model(Linha,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new linha form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", linhas_path, "post" do
      assert_select "input#linha_nome[name=?]", "linha[nome]"
    end
  end
end
