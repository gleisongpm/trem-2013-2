require 'spec_helper'

describe "locomotivalinhaparadas/edit" do
  before(:each) do
    @locomotivalinhaparada = assign(:locomotivalinhaparada, stub_model(Locomotivalinhaparada,
      :horachegada => "MyString",
      :horapartida => "MyString",
      :tremlinha => nil,
      :parada => nil
    ))
  end

  it "renders the edit locomotivalinhaparada form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", locomotivalinhaparada_path(@locomotivalinhaparada), "post" do
      assert_select "input#locomotivalinhaparada_horachegada[name=?]", "locomotivalinhaparada[horachegada]"
      assert_select "input#locomotivalinhaparada_horapartida[name=?]", "locomotivalinhaparada[horapartida]"
      assert_select "input#locomotivalinhaparada_tremlinha[name=?]", "locomotivalinhaparada[tremlinha]"
      assert_select "input#locomotivalinhaparada_parada[name=?]", "locomotivalinhaparada[parada]"
    end
  end
end
