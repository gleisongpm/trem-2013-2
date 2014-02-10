require 'spec_helper'

describe "locomotivas/edit" do
  before(:each) do
    @locomotiva = assign(:locomotiva, stub_model(Locomotiva,
      :nome => "MyString",
      :modelo => "MyString"
    ))
  end

  it "renders the edit locomotiva form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", locomotiva_path(@locomotiva), "post" do
      assert_select "input#locomotiva_nome[name=?]", "locomotiva[nome]"
      assert_select "input#locomotiva_modelo[name=?]", "locomotiva[modelo]"
    end
  end
end
