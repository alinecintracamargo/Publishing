require 'rails_helper'

RSpec.describe "suppliers/show", type: :view do
  before(:each) do
    assign(:supplier, Supplier.create!(
      supplier_name: "Supplier Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Supplier Name/)
  end
end
