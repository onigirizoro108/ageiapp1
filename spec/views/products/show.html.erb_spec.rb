require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :item => "Item",
      :price => 1,
      :unit => 2,
      :photo => "Photo",
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Item/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Photo/)
    rendered.should match(/MyText/)
  end
end
