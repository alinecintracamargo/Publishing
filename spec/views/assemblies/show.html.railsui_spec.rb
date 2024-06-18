require 'rails_helper'

RSpec.describe "assemblies/show", type: :view do
  before(:each) do
    assign(:assembly, Assembly.create!(
      assembly_name: "Assembly Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Assembly Name/)
  end
end
