require 'spec_helper'

describe "locomotivas/new" do
  before(:each) do
    assign(:locomotiva, stub_model(Locomotiva,
      :nome => "MyString",
      :modelo => "MyString"
    ).as_new_record)
  end

  it "renders new locomotiva form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", locomotivas_path, "post" do
      assert_select "input#locomotiva_nome[name=?]", "locomotiva[nome]"
      assert_select "input#locomotiva_modelo[name=?]", "locomotiva[modelo]"
    end
  end
end
