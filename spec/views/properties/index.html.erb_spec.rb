require 'rails_helper'

RSpec.describe "properties/index", type: :view do
  before(:each) do
    assign(:properties, [
      Property.create!(
        user: nil,
        address: "Address",
        sqmt: 2,
        price: "9.99"
      ),
      Property.create!(
        user: nil,
        address: "Address",
        sqmt: 2,
        price: "9.99"
      )
    ])
  end

  it "renders a list of properties" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
