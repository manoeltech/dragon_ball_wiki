require 'rails_helper'

RSpec.describe "avatars/show", type: :view do
  before(:each) do
    assign(:avatar, Avatar.create!(
      name: "Name",
      ki: 2,
      description: "MyText",
      gender: 3,
      weight: 4,
      status: 5,
      user_admin: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(//)
  end
end
