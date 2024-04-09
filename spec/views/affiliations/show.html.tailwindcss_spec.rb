require 'rails_helper'

RSpec.describe "affiliations/show", type: :view do
  before(:each) do
    assign(:affiliation, Affiliation.create!(
      name: "Name",
      status: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
