require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :item => "MyString",
      :price => 1,
      :unit => 1,
      :photo => "MyString",
      :comment => "MyText"
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", products_path, "post" do
      assert_select "input#product_item[name=?]", "product[item]"
      assert_select "input#product_price[name=?]", "product[price]"
      assert_select "input#product_unit[name=?]", "product[unit]"
      assert_select "input#product_photo[name=?]", "product[photo]"
      assert_select "textarea#product_comment[name=?]", "product[comment]"
    end
  end
end
