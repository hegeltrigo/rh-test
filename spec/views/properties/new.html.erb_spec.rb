require 'rails_helper'

RSpec.describe "properties/new", type: :view do
  before(:each) do
    assign(:property, Property.new(
      user: nil,
      address: "MyString",
      sqmt: 1,
      price: "9.99"
    ))
  end

  it "renders new property form" do
    render

    assert_select "form[action=?][method=?]", properties_path, "post" do

      assert_select "input[name=?]", "property[user_id]"

      assert_select "input[name=?]", "property[address]"

      assert_select "input[name=?]", "property[sqmt]"

      assert_select "input[name=?]", "property[price]"
    end
  end
end
