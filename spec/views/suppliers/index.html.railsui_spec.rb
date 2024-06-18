require 'rails_helper'

RSpec.describe "suppliers/index", type: :view do
  before(:each) do
    assign(:suppliers, [
      Supplier.create!(
        supplier_name: "Supplier Name"
      ),
      Supplier.create!(
        supplier_name: "Supplier Name"
      )
    ])
  end

  it "renders a list of suppliers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Supplier Name".to_s), count: 2
  end
end
