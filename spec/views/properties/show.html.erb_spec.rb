require 'rails_helper'

RSpec.describe "properties/show", type: :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      user: nil,
      address: "Address",
      sqmt: 2,
      price: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
  end
end
