require 'rails_helper'

RSpec.describe "assemblies/index", type: :view do
  before(:each) do
    assign(:assemblies, [
      Assembly.create!(
        assembly_name: "Assembly Name"
      ),
      Assembly.create!(
        assembly_name: "Assembly Name"
      )
    ])
  end

  it "renders a list of assemblies" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Assembly Name".to_s), count: 2
  end
end
