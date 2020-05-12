require 'rails_helper'

RSpec.describe "properties/edit", type: :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      user: nil,
      address: "MyString",
      sqmt: 1,
      price: "9.99"
    ))
  end

  it "renders the edit property form" do
    render

    assert_select "form[action=?][method=?]", property_path(@property), "post" do

      assert_select "input[name=?]", "property[user_id]"

      assert_select "input[name=?]", "property[address]"

      assert_select "input[name=?]", "property[sqmt]"

      assert_select "input[name=?]", "property[price]"
    end
  end
end
