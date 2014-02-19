require 'spec_helper'

describe "locomotivalinhaparadas/new" do
  before(:each) do
    assign(:locomotivalinhaparada, stub_model(Locomotivalinhaparada,
      :horachegada => "MyString",
      :horapartida => "MyString",
      :tremlinha => nil,
      :parada => nil
    ).as_new_record)
  end

  it "renders new locomotivalinhaparada form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", locomotivalinhaparadas_path, "post" do
      assert_select "input#locomotivalinhaparada_horachegada[name=?]", "locomotivalinhaparada[horachegada]"
      assert_select "input#locomotivalinhaparada_horapartida[name=?]", "locomotivalinhaparada[horapartida]"
      assert_select "input#locomotivalinhaparada_tremlinha[name=?]", "locomotivalinhaparada[tremlinha]"
      assert_select "input#locomotivalinhaparada_parada[name=?]", "locomotivalinhaparada[parada]"
    end
  end
end
