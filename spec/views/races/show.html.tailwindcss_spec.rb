require 'rails_helper'

RSpec.describe "races/show", type: :view do
  before(:each) do
    assign(:race, Race.create!(
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
